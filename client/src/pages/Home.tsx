export default function Home() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 to-indigo-100">
      <div className="mx-auto max-w-7xl px-4 py-16 sm:px-6 lg:px-8">
        <div className="text-center">
          <h1 className="text-5xl font-bold tracking-tight text-gray-900 sm:text-6xl">
            Kenya Data Visualization
          </h1>
          <p className="mt-6 text-xl text-gray-600">
            Explore Kenya's administrative, economic, and political data through interactive visualizations
          </p>
          <div className="mt-10 flex justify-center gap-4">
            <button className="rounded-lg bg-blue-600 px-6 py-3 font-semibold text-white hover:bg-blue-700">
              Get Started
            </button>
            <button className="rounded-lg border border-gray-300 px-6 py-3 font-semibold text-gray-900 hover:bg-gray-50">
              Learn More
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
