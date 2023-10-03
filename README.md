# sbom-spdx-lite-blog-errata

[SPDX-LiteでSBOMを作ってみよう｜OSS管理ブログ｜ソフトウェア部品管理ソリューション｜日立ソリューションズ](https://www.hitachi-solutions.co.jp/sbom/sp/blog/2021120102/)の誤植を指摘するためのリポジトリ

1. *Package Information*セクションのコードスニペットを適切に加工して結合したものと、最終形として掲載されている内容に差分がある

    ```
    ./092-validate-package-info.bash
    ```
    
    ```
    --- /dev/fd/63	2023-10-03 20:15:53
    +++ /dev/fd/62	2023-10-03 20:15:53
    @@ -6,79 +6,19 @@
     FilesAnalyzed: false
     PackageLicenseConcluded: LicenseRef-Haisho
     PackageLicenseDeclared: LicenseRef-Haisho
    -PackageLicenseComments: Haisho Licenseは自社が配布しているossに適用されるセンス。
     CopyrightText:Copyright 2020-2021 ExmapleCorp
    +PackageLicenseComments: Haisho Licenseは自社が配布しているossに適用されるライセス。
     PackageComment: exampleCorp製のパッケージ。
    -PackageName: original_component
    -SPDXID: SPDXRef-original_component
    -PackageVersion: 1.0
    -PackageFileName: original_component
    -PackageDownloadLocation: NOASSERTION
    -FilesAnalyzed: false
    -PackageLicenseConcluded: LicenseRef-Haisho
    -PackageLicenseDeclared: LicenseRef-Haisho
    -PackageLicenseComments: Haisho Licenseは自社が配布しているossに適用されるセンス。
    -CopyrightText:Copyright 2020-2021 ExmapleCorp
    -PackageComment: exampleCorp製のパッケージ。
    -PackageName: original_component
    -SPDXID: SPDXRef-original_component
    -PackageVersion: 1.0
    -PackageFileName: original_component
    -PackageDownloadLocation: NOASSERTION
    -FilesAnalyzed: false
    -PackageLicenseConcluded: LicenseRef-Haisho
    -PackageLicenseDeclared: LicenseRef-Haisho
    -PackageLicenseComments: Haisho Licenseは自社が配布しているossに適用されるセンス。
    -CopyrightText:Copyright 2020-2021 ExmapleCorp
    -PackageComment: exampleCorp製のパッケージ。
     PackageName: oss_component1
     SPDXID: SPDXRef-oss_component1
     PackageVersion: 1.0
     PackageFileName: oss_component1
     PackageDownloadLocation: http://oss_component1/download/v1.0
     FilesAnalyzed: false
    -PackageHomePage: http://oss_component1/
     PackageLicenseConcluded: MIT
     PackageLicenseDeclared: MIT
    -CopyrightText:Copyright 2008-2010 oss suplier
    -PackageName: oss_component1
    -SPDXID: SPDXRef-oss_component1
    -PackageVersion: 1.0
    -PackageFileName: oss_component1
    -PackageDownloadLocation: http://oss_component1/download/v1.0
    -FilesAnalyzed: false
     PackageHomePage: http://oss_component1/
    -PackageLicenseConcluded: MIT
    -PackageLicenseDeclared: MIT
     CopyrightText:Copyright 2008-2010 oss suplier
    -PackageName: oss_component1
    -SPDXID: SPDXRef-oss_component1
    -PackageVersion: 1.0
    -PackageFileName: oss_component1
    -PackageDownloadLocation: http://oss_component1/download/v1.0
    -FilesAnalyzed: false
    -PackageHomePage: http://oss_component1/
    -PackageLicenseConcluded: MIT
    -PackageLicenseDeclared: MIT
    -CopyrightText:Copyright 2008-2010 oss suplier
    -PackageName: oss_component2
    -SPDXID: SPDXRef-oss_component2
    -PackageVersion: 2.0
    -PackageFileName: oss_component2
    -PackageDownloadLocation: http://oss_component2/download/v2.0
    -FilesAnalyzed: false
    -PackageLicenseConcluded: LGPL-2.0-only
    -PackageLicenseDeclared: LGPL-2.0-only
    -CopyrightText: NOASSERTION
    -PackageName: oss_component2
    -SPDXID: SPDXRef-oss_component2
    -PackageVersion: 2.0
    -PackageFileName: oss_component2
    -PackageDownloadLocation: http://oss_component2/download/v2.0
    -FilesAnalyzed: false
    -PackageLicenseConcluded: LGPL-2.0-only
    -PackageLicenseDeclared: LGPL-2.0-only
    -CopyrightText: NOASSERTION
     PackageName: oss_component2
     SPDXID: SPDXRef-oss_component2
     PackageVersion: 2.0
    1
    ```

2. *Other Licensing Information Detected*セクションのコードスニペットを適切に加工して結合したものと、最終形として掲載されている内容に差分がある

    ```
    ./093-validate-license-information.bash
    ```
    
    ```
    --- /dev/fd/63	2023-10-03 20:16:50
    +++ /dev/fd/62	2023-10-03 20:16:50
    @@ -1,4 +1,4 @@
    -LicenseName: Haisho License
     LicenseID: LicenseRef-Haisho
    -ExtractedText: これは○○社が提供するOSSに適用されるライセンスです。このライセンスが適用されたOSSの使用者は、以降に宣言される項目すべてを"拝承"したとみなします。
    -LicenseComment: This is the Haisho License.
    +ExtractedText: これは○○社が提供するOSSに適用されるライセンスです。このライセンスが適用されたOSSを使用した場合、使用者は以下の項目すべてを"拝承"したとみなします。
    +LicenseName: Haisho License
    +LicenseComment: This is the Haisho License
    1
    ```

3. 各セクションのコードスニペットを適切に加工して結合したものと、最終的な完成形として掲載されている内容に差分がある

    ```
    ./094-validate-spdx-lite-document.bash
    ```

    ```
    0
    --- /dev/fd/63	2023-10-03 21:16:23
    +++ /dev/fd/62	2023-10-03 21:16:23
    @@ -6,8 +6,8 @@
     FilesAnalyzed: false
     PackageLicenseConcluded: LicenseRef-Haisho
     PackageLicenseDeclared: LicenseRef-Haisho
    -PackageLicenseComments: Haisho Licenseは自社が配布しているossに適用されるセンス。
     CopyrightText:Copyright 2020-2021 ExmapleCorp
    +PackageLicenseComments: Haisho Licenseは自社が配布しているossに適用されるライセス。
     PackageComment: exampleCorp製のパッケージ。
     PackageName: oss_component1
     SPDXID: SPDXRef-oss_component1
    @@ -15,9 +15,9 @@
     PackageFileName: oss_component1
     PackageDownloadLocation: http://oss_component1/download/v1.0
     FilesAnalyzed: false
    -PackageHomePage: http://oss_component1/
     PackageLicenseConcluded: MIT
     PackageLicenseDeclared: MIT
    +PackageHomePage: http://oss_component1/
     CopyrightText:Copyright 2008-2010 oss suplier
     PackageName: oss_component2
     SPDXID: SPDXRef-oss_component2
    1
    --- /dev/fd/63	2023-10-03 21:16:23
    +++ /dev/fd/62	2023-10-03 21:16:23
    @@ -1,4 +1,4 @@
    -LicenseName: Haisho License
     LicenseID: LicenseRef-Haisho
    -ExtractedText: これは○○社が提供するOSSに適用されるライセンスです。このライセンスが適用されたOSSの使用者は、以降に宣言される項目すべてを"拝承"したとみなします。
    -LicenseComment: This is the Haisho License.
    +ExtractedText: これは○○社が提供するOSSに適用されるライセンスです。このライセンスが適用されたOSSを使用した場合、使用者は以下の項目すべてを"拝承"したとみなします。
    +LicenseName: Haisho License
    +LicenseComment: This is the Haisho License
    1
    --- /dev/fd/63	2023-10-03 21:16:23
    +++ /dev/fd/62	2023-10-03 21:16:23
    @@ -2,7 +2,7 @@
     DataLicense: CC0-1.0
     SPDXID: SPDXRef-DOCUMENT
     DocumentName: example_1.0
    -DocumentNamespace: http://spdx.org/spdxdocs/example_1.0-69527cee-596f-4ca4-9ecd-8c02fb12a175
    +DocumentNamespace: http://spdx.org/spdxdocs/example_10-69527cee-596f-4ca4-9ecd-8c02fb12a175
     Creator: Person: Nanashi no gonbe ()
     Creator: Organization: ExampleCorp ()
     Created: 2021-10-31T14:00:00Z
    @@ -14,8 +14,8 @@
     FilesAnalyzed: false
     PackageLicenseConcluded: LicenseRef-Haisho
     PackageLicenseDeclared: LicenseRef-Haisho
    -PackageLicenseComments: Haisho Licenseは自社が配布しているossに適用されるセンス。
    -CopyrightText:Copyright 2020-2021 ExmapleCorp
    +PackageCopyrightText: Copyright 2020-2021 ExmapleCorp
    +PackageLicenseComments: Haisho Licenseは自社が配布しているossに適用されるライセンス。
     PackageComment: exampleCorp製のパッケージ。
     PackageName: oss_component1
     SPDXID: SPDXRef-oss_component1
    @@ -23,10 +23,10 @@
     PackageFileName: oss_component1
     PackageDownloadLocation: http://oss_component1/download/v1.0
     FilesAnalyzed: false
    -PackageHomePage: http://oss_component1/
     PackageLicenseConcluded: MIT
     PackageLicenseDeclared: MIT
    -CopyrightText:Copyright 2008-2010 oss suplier
    +PackageHomePage: http://oss_component1/
    +PackageCopyrightText: Copyright 2008-2010 oss suplier
     PackageName: oss_component2
     SPDXID: SPDXRef-oss_component2
     PackageVersion: 2.0
    @@ -35,8 +35,8 @@
     FilesAnalyzed: false
     PackageLicenseConcluded: LGPL-2.0-only
     PackageLicenseDeclared: LGPL-2.0-only
    -CopyrightText: NOASSERTION
    -LicenseName: Haisho License
    +PackageCopyrightText: NOASSERTION
     LicenseID: LicenseRef-Haisho
    -ExtractedText: これは○○社が提供するOSSに適用されるライセンスです。このライセンスが適用されたOSSの使用者は、以降に宣言される項目すべてを"拝承"したとみなします。
    -LicenseComment: This is the Haisho License.
    +ExtractedText: これは○○社が提供するOSSに適用されるライセンスです。このライセンスが適用されたOSSを使用した場合、使用者は以下の項目すべてを"拝承"したとみなします。
    +LicenseName: Haisho License
    +LicenseComment: This is the Haisho License
    1
    ```

4. *互換性の確認*セクションで紹介されている`https://github.com/spdx/tools`は`https://github.com/spdx/tools-java`で置き換えられる予定とアナウンスされているので、リンクを変更したほうが良い
5. `https://github.com/spdx/tools-java`はバイナリがダウンロードできるので、ツールのインストール手順を変更したほうが良い
6. 最終的な完成形として掲載されている内容を上記のツール（`spdx/tools-java`）で検証するとバリデーションエラーが発生する（詳細は https://github.com/kyanny/sbom-spdx-lite-blog-errata/compare/000b7d5...68dadc1 を参照）
7. 本文中のリンク`https://spdx.github.io/spdx-spec/SPDX-license-expressions/?_fsi=349TKChH&_fsi=4e2KyGcl`は404 Not Foundなので正しいURLに修正したほうが良い
8. `oss_component1`の*CopyrightText*に単語のスペルミスがある。誤: suplier 正: supplier
