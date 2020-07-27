Pod::Spec.new do |spec|
    spec.name = "PrettyUtils"
    spec.version = "0.2"
    spec.summary = "A pretty utils for iOS/macOS developing"
    spec.homepage = "https://github.com/nab0y4enko/PrettyUtils"
    spec.license = 'MIT'
    spec.author = { "Oleksii Naboichenko" => "oleksii.naboichenko@gmail.com" }
    spec.social_media_url = "https://twitter.com/nab0y4enko"
    spec.source = { :git => "https://github.com/nab0y4enko/PrettyUtils.git", :tag => "#{spec.version}" }

    spec.swift_versions = ['5.0', '5.1']
    
    spec.frameworks = ['Foundation']
    
    spec.ios.deployment_target = '11.0'
    spec.osx.deployment_target = '10.14'

    spec.source_files = [
        'Sources/**/*.swift',
    ]
end
