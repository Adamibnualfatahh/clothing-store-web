<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <div class="p-6 sm:px-20 bg-white border-b border-gray-200">
                    <div>
                        <x-jet-application-logo class="block h-12 w-auto" />
                    </div>
                
                    <div class="mt-8 text-2xl">
                     Selamat Datang Di Dashboard  
                    </div>
                
                    <div class="mt-6 text-gray-500">
                        
                        <a href="{{ route('index') }}"
                        class=" bg-pink-200 text-black hover:bg-gray-200 hover:text-pink-400 rounded-none px-8 py-3 mt-3 inline-block flex-none transition duration-200"
                        >Lanjut Belanja</a>
                        </div>
                </div>
                
                
                
            </div>
        </div>
    </div>
</x-app-layout>
