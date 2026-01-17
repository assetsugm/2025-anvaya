@extends('layouts.app')

@section('title', 'Live Count')

@section('content')
    <div class="max-w-7xl mx-auto px-4 py-12">
        <!-- Stats Overview -->
        {{-- <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
            <!-- Total Voters -->
            <div class="bg-white rounded-2xl shadow-xl p-6 animate-fadeInUp border-l-4 border-blue-500">
                <div class="flex items-center justify-between mb-3">
                    <div class="text-3xl">👥</div>
                    <span class="text-3xl font-bold text-gray-800 animate-countUp">{{ $totalVoters }}</span>
                </div>
                <h3 class="text-sm font-semibold text-gray-600 uppercase">Total Pemilih</h3>
            </div>

            <!-- Total Voted -->
            <div class="bg-white rounded-2xl shadow-xl p-6 animate-fadeInUp border-l-4 border-green-500"
                style="animation-delay: 0.1s">
                <div class="flex items-center justify-between mb-3">
                    <div class="text-3xl">✅</div>
                    <span class="text-3xl font-bold text-gray-800 animate-countUp">{{ $totalVoted }}</span>
                </div>
                <h3 class="text-sm font-semibold text-gray-600 uppercase">Sudah Memilih</h3>
            </div>

            <!-- Participation -->
            <div class="bg-white rounded-2xl shadow-xl p-6 animate-fadeInUp border-l-4 border-purple-500"
                style="animation-delay: 0.2s">
                <div class="flex items-center justify-between mb-3">
                    <div class="text-3xl">📈</div>
                    <span
                        class="text-3xl font-bold text-gray-800 animate-countUp">{{ number_format(($totalVoted / $totalVoters) * 100, 1) }}%</span>
                </div>
                <h3 class="text-sm font-semibold text-gray-600 uppercase">Partisipasi</h3>
            </div>

            <!-- Remaining -->
            <div class="bg-white rounded-2xl shadow-xl p-6 animate-fadeInUp border-l-4 border-orange-500"
                style="animation-delay: 0.3s">
                <div class="flex items-center justify-between mb-3">
                    <div class="text-3xl">⏳</div>
                    <span class="text-3xl font-bold text-gray-800 animate-countUp">{{ $totalVoters - $totalVoted }}</span>
                </div>
                <h3 class="text-sm font-semibold text-gray-600 uppercase">Belum Memilih</h3>
            </div>
        </div> --}}

        <!-- Chart Section -->
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
            <!-- Bar Chart -->
            <div class="bg-white rounded-2xl shadow-xl p-8 animate-fadeInUp" style="animation-delay: 0.4s">
                <h2 class="text-2xl font-bold text-gray-800 mb-6 flex items-center gap-2">
                    <span>📊</span> Perolehan Suara
                </h2>
                <canvas id="voteChart"></canvas>
            </div>

            <!-- Pie Chart -->
            <div class="bg-white rounded-2xl shadow-xl p-8 animate-fadeInUp" style="animation-delay: 0.5s">
                <h2 class="text-2xl font-bold text-gray-800 mb-6 flex items-center gap-2">
                    <span>🥧</span> Persentase Suara
                </h2>
                <canvas id="pieChart"></canvas>
            </div>
        </div>

        <!-- Candidates Detail -->
        <div class="bg-white rounded-2xl shadow-xl p-8 animate-fadeInUp" style="animation-delay: 0.6s">
            <h2 class="text-2xl font-bold text-gray-800 mb-6 flex items-center gap-2">
                <span>🏆</span> Detail Perolehan Suara
            </h2>

            <div class="space-y-6">
                @foreach ($candidates as $index => $candidate)
                    <div class="border-2 border-gray-100 rounded-xl p-6 hover:shadow-lg transition-all">
                        <div class="flex md:flex-row flex-col md:items-center  gap-6 mb-4">
                            <!-- Rank -->
                            <div class="flex-shrink-0">
                                @if ($index === 0)
                                    <div
                                        class="w-16 h-16 bg-gradient-to-br from-yellow-400 to-yellow-600 rounded-full flex items-center justify-center text-white text-2xl font-bold shadow-lg">
                                        🥇
                                    </div>
                                @elseif($index === 1)
                                    <div
                                        class="w-16 h-16 bg-gradient-to-br from-gray-300 to-gray-500 rounded-full flex items-center justify-center text-white text-2xl font-bold shadow-lg">
                                        🥈
                                    </div>
                                @elseif($index === 2)
                                    <div
                                        class="w-16 h-16 bg-gradient-to-br from-orange-400 to-orange-600 rounded-full flex items-center justify-center text-white text-2xl font-bold shadow-lg">
                                        🥉
                                    </div>
                                @else
                                    <div
                                        class="w-16 h-16 bg-gradient-to-br from-gray-200 to-gray-300 rounded-full flex items-center justify-center text-gray-700 text-2xl font-bold">
                                        {{ $index + 1 }}
                                    </div>
                                @endif
                            </div>

                            <!-- Avatar & Info -->
                            <div class="flex items-center gap-4 flex-1">
                                <div
                                    class="w-16 h-16 bg-gradient-to-br from-purple-400 to-blue-500 rounded-full overflow-hidden border-4 border-white shadow-lg relative cursor-pointer group">
                                    @if ($candidate->avatar)
                                        <img src="{{ $candidate->avatar }}" alt="{{ $candidate->name }}"
                                            class="w-full h-full object-cover transition-transform duration-300 group-hover:scale-110">
                                    @else
                                        <div
                                            class="w-full h-full flex items-center justify-center text-white text-xl font-bold">
                                            {{ substr($candidate->name, 0, 1) }}
                                        </div>
                                    @endif
                                    
                                    <!-- Badge Nomor Urut -->
                                    <div class="absolute -bottom-1 -right-1 w-6 h-6 bg-yellow-400 rounded-full flex items-center justify-center border-2 border-white shadow-sm z-10">
                                        <span class="text-white text-xs font-bold">{{ $candidate->number }}</span>
                                    </div>
                                </div>
                                <div class="flex-1">
                                    <div class="flex items-center gap-2 mb-1">
                                        <h3 class="text-xl font-bold text-gray-800">{{ $candidate->name }}</h3>
                                        <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-2.5 py-0.5 rounded border border-blue-400">
                                            No. {{ $candidate->number }}
                                        </span>
                                    </div>
                                    <p class="text-gray-600 text-sm flex items-center gap-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H5a2 2 0 00-2 2v9a2 2 0 002 2h14a2 2 0 002-2V8a2 2 0 00-2-2h-5m-4 0V5a2 2 0 114 0v1m-4 0a2 2 0 104 0m-5 8a2 2 0 100-4 2 2 0 000 4zm0 0c1.306 0 2.417.835 2.83 2M9 14a3.001 3.001 0 00-2.83 2M15 11h3m-3 4h2" />
                                        </svg>
                                        {{ $candidate->nim }}
                                    </p>
                                </div>
                            </div>

                            <!-- Vote Count -->
                            <div class="text-right">
                                <div class="text-4xl font-bold text-purple-600">{{ $candidate->voters->count() }}</div>
                                <p class="text-sm text-gray-600">Suara</p>
                            </div>
                        </div>

                        <!-- Vision & Mission Accordion/Section -->
                        <div class="mt-4 border-t border-gray-100 pt-4">
                            <div x-data="{ open: false }">
                                <button @click="open = !open" class="flex items-center justify-between w-full text-left text-sm font-semibold text-gray-600 hover:text-purple-600 focus:outline-none">
                                    <span>Visi & Misi</span>
                                    <svg class="h-5 w-5 transform transition-transform" :class="{'rotate-180': open}" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                                    </svg>
                                </button>
                                
                                <div x-show="open" 
                                     x-transition:enter="transition ease-out duration-200"
                                     x-transition:enter-start="opacity-0 -translate-y-2"
                                     x-transition:enter-end="opacity-100 translate-y-0"
                                     class="mt-3 space-y-4">
                                    
                                    <!-- Vision -->
                                    <div>
                                        <h4 class="text-sm font-bold text-gray-700 mb-1 flex items-center gap-1">
                                            🎯 Visi
                                        </h4>
                                        <p class="text-gray-600 text-sm italic">"{{ $candidate->vision }}"</p>
                                    </div>

                                    <!-- Mission -->
                                    <div>
                                        <h4 class="text-sm font-bold text-gray-700 mb-1 flex items-center gap-1">
                                            🚀 Misi
                                        </h4>
                                        <ul class="list-disc list-inside text-gray-600 text-sm space-y-1 ml-1">
                                            @foreach(explode("\n", $candidate->mission) as $mission)
                                                @if(trim($mission) !== '')
                                                    <li>{{ $mission }}</li>
                                                @endif
                                            @endforeach
                                        </ul>
                                    </div>

                                    <!-- CV Link -->
                                    @if($candidate->cv)
                                        <div class="pt-2">
                                            <a href="{{ $candidate->cv }}" target="_blank" class="inline-flex items-center gap-2 text-sm font-medium text-blue-600 hover:text-blue-800 hover:underline">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
                                                </svg>
                                                Lihat Curriculum Vitae (CV)
                                            </a>
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>

                        <!-- Progress Bar -->
                        <div class="relative">
                            <div class="w-full bg-gray-200 rounded-full h-3 overflow-hidden">
                                <div class="progress-bar h-full rounded-full"
                                    style="width: {{ number_format(($candidate->voters->count() / $totalVoted) * 100, 1) }}%; background: linear-gradient(90deg, #667eea 0%, #764ba2 100%);">
                                </div>
                            </div>
                            <div
                                class="absolute -top-1 right-0 bg-purple-600 text-white px-3 py-1 rounded-full text-xs font-bold">
                                {{ number_format(($candidate->voters->count() / $totalVoted) * 100, 1) }}%
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
@section('scripts')
    <script>
        const candidates = @json($candidates);
        const labels = candidates.map(c => c.name);
        const votes = candidates.map(c => c.voters.length);
        const colors = [
            'rgba(139, 92, 246, 0.8)',
            'rgba(59, 130, 246, 0.8)',
            'rgba(16, 185, 129, 0.8)',
            'rgba(245, 158, 11, 0.8)',
            'rgba(239, 68, 68, 0.8)',
        ];

        // Bar Chart
        const ctx = document.getElementById('voteChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Jumlah Suara',
                    data: votes,
                    backgroundColor: colors,
                    borderColor: colors.map(c => c.replace('0.8', '1')),
                    borderWidth: 2,
                    borderRadius: 8,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: true,
                plugins: {
                    legend: {
                        display: false
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        ticks: {
                            stepSize: 1
                        }
                    }
                }
            }
        });

        // Pie Chart
        const ctx2 = document.getElementById('pieChart').getContext('2d');
        new Chart(ctx2, {
            type: 'doughnut',
            data: {
                labels: labels,
                datasets: [{
                    data: votes,
                    backgroundColor: colors,
                    borderColor: '#ffffff',
                    borderWidth: 3,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: true,
                plugins: {
                    legend: {
                        position: 'bottom',
                        labels: {
                            padding: 15,
                            font: {
                                size: 12,
                                weight: 'bold'
                            }
                        }
                    }
                }
            }
        });
    </script>
@endsection
