// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
enum L10n {
    /// Read the Gita anywhere, anytime!
    static let onboardingDetail1 = L10n.tr(
        "Localizable",
        "onboarding-detail-1",
        fallback: "Read the Gita anywhere, anytime!"
    )
    /// Modern and interactive design to help you focus on reading.
    static let onboardingDetail2 = L10n.tr(
        "Localizable",
        "onboarding-detail-2",
        fallback: "Modern and interactive design to help you focus on reading."
    )
    /// Dive deep into each verse through a library of translations.
    static let onboardingDetail3 = L10n.tr(
        "Localizable",
        "onboarding-detail-3",
        fallback: "Dive deep into each verse through a library of translations."
    )
    /// Share, memorise and take notes on your favorite verses.
    static let onboardingDetail4 = L10n.tr(
        "Localizable",
        "onboarding-detail-4",
        fallback: "Share, memorise and take notes on your favorite verses."
    )
    /// Get Started
    static let onboardingGetStarted = L10n.tr("Localizable", "Onboarding-getStarted", fallback: "Get Started")
    /// Next
    static let onboardingNext = L10n.tr("Localizable", "Onboarding-next", fallback: "Next")
    /// Skip
    static let onboardingSkip = L10n.tr("Localizable", "Onboarding-skip", fallback: "Skip")
    /// Bhagavad Gita - Simplified
    static let onboardingTitle1 = L10n.tr("Localizable", "onboarding-title-1", fallback: "Bhagavad Gita - Simplified")
    /// Beautiful Design
    static let onboardingTitle2 = L10n.tr("Localizable", "onboarding-title-2", fallback: "Beautiful Design")
    /// Explore Each Verse
    static let onboardingTitle3 = L10n.tr("Localizable", "onboarding-title-3", fallback: "Explore Each Verse")
    /// Make It Your Own
    static let onboardingTitle4 = L10n.tr("Localizable", "onboarding-title-4", fallback: "Make It Your Own")
    enum ContentView {
        /// Bhagavad
        static let bhagavad = L10n.tr("Localizable", "ContentView.bhagavad", fallback: "Bhagavad")
        /// Bhagavad Gita
        static let bhagavadGita = L10n.tr("Localizable", "ContentView.bhagavad_gita", fallback: "Bhagavad Gita")
        /// Localizable.strings
        ///   BhagavadGita
        ///
        ///   Created by waheedCodes on 29/07/2023.
        static func bhagavadGitaChapter(_ p1: Any) -> String {
            L10n.tr(
                "Localizable",
                "ContentView.bhagavad_gita_chapter %@",
                String(describing: p1),
                fallback: "Bhagavad Gita Chapter: %@"
            )
        }
    }
}

// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
    private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
        let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
        return String(format: format, locale: Locale.current, arguments: args)
    }
}

// swiftlint:disable convenience_type
private final class BundleToken {
    static let bundle: Bundle = {
        #if SWIFT_PACKAGE
            return Bundle.module
        #else
            return Bundle(for: BundleToken.self)
        #endif
    }()
}

// swiftlint:enable convenience_type
