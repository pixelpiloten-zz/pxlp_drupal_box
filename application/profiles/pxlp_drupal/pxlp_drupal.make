# Core version
core: "7.x"

api: 2

defaults:
    projects:
        subdir: "contrib"

projects:
    # Modules - Tools
    rules:
        version: ~
    media:
        version: ~
        patch:
            - "https://www.drupal.org/files/issues/Issue_2454933_0.patch"
    file_entity:
        version: ~
    rabbit_hole:
        version: ~

    # Modules - Ckeditor
    ckeditor:
        version: ~

    # Modules - Features
    features:
        version: ~
    features_translations:
        version: ~

    # Modules - Theming / Layout
    jquery_update:
        version: ~
    panels:
        version: ~
    menu_block:
        version: ~
    bean:
        version: ~

    # Modules - Fields
    entityreference:
        version: ~
    field_collection:
        version: ~
    field_group:
        version: ~
    paragraphs:
        version: ~
    scheduler:
        version: ~

    # Modules - SEO
    metatag:
        version: ~
    pathauto:
        version: ~
    transliteration:
        version: ~
    advagg:
        version: ~

    # Modules - Security, Debugging & Develop
    devel:
        version: ~
    hacked:
        version: ~
    diff:
        version: ~
    module_filter:
        version: ~

    # Modules - Views
    views:
        version: ~
    views_bulk_operations:
        version: ~

    # Modules - Misc
    date:
        version: ~
    token:
        version: ~
    entity:
        version: ~
    ctools:
        version: ~
    special_menu_items:
        version: ~
    role_delegation:
        version: ~

# Libraries
libraries:
    version: ~
    ckeditor:
        destination: "modules/contrib/ckeditor/ckeditor"
        download:
            type: "file"
            url: "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.5.1/ckeditor_4.5.1_standard.zip"