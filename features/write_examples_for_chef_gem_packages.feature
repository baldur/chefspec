@chefgem
Feature: Write examples for chef gem packages

  Express an expectation that a chef gem package will be installed:

      chef_run.should install_chef gem_package 'foo'

  Scenario: chef gem package resource
    Given a Chef cookbook with a recipe that declares a chef gem package resource
    And the recipe has a spec example that expects the chef gem package to be installed
    When the recipe example is successfully run
    Then the chef gem package will not have been installed

  Scenario: Package resource with default action
    Given a Chef cookbook with a recipe that declares a chef gem package resource with no action specified
    And the recipe has a spec example that expects the chef gem package to be installed
    When the recipe example is successfully run
    Then the chef gem package will not have been installed

  Scenario: Package resource with fixed version
    Given a Chef cookbook with a recipe that declares a chef gem package resource at a fixed version
    And the recipe has a spec example that expects the chef gem package to be installed at that version
    When the recipe example is successfully run
    Then the chef gem package will not have been installed

  Scenario: Package resource with fixed version and default action
    Given a Chef cookbook with a recipe that declares a chef gem package resource at a fixed version with no action specified
    And the recipe has a spec example that expects the chef gem package to be installed at that version
    When the recipe example is successfully run
    Then the chef gem package will not have been installed

  Scenario: Upgrade a package
    Given a Chef cookbook with a recipe that upgrades a chef gem package
    And the recipe has a spec example that expects the chef gem package to be upgraded
    When the recipe example is successfully run
    Then the chef gem package will not have been upgraded

  Scenario: Remove a package
    Given a Chef cookbook with a recipe that removes a chef gem package
    And the recipe has a spec example that expects the chef gem package to be removed
    When the recipe example is successfully run
    Then the chef gem package will not have been removed

  Scenario: Purge a package
    Given a Chef cookbook with a recipe that purges a chef gem package
    And the recipe has a spec example that expects the chef gem package to be purged
    When the recipe example is successfully run
    Then the chef gem package will not have been purged
