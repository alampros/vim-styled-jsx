"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim syntax file
"
" Language:   styled-jsx (CSS in JSX)
" Maintainer: Aaron Lampros <alampros@gmail.com>
" URL:        https://github.com/alampros/vim-styled-jsx
" Depends:    mxw/vim-jsx
"
" Based on https://github.com/fleischie/vim-styled-components (thanks!)
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif

runtime! syntax/css.vim
" syn include @htmlCss ~/.vim/bundle/vim-css3-syntax/after/syntax/html.vim

syntax cluster CSS
\ contains=cssAnimation,cssAnimationAttr,cssAnimationProp,cssAttr,
\          cssAttrComma,cssAttributeSelector,cssAuralAttr,
\          cssAuralProp,cssBackgroundAttr,cssBackgroundProp,
\          cssBorderAttr,cssBorderProp,cssBoxAttr,cssBoxProp,cssBraces,
\          cssClassName,cssClassNameDot,cssColor,cssColorProp,cssComma,
\          cssComment,cssCommonAttr,cssContentForPagedMediaAttr,
\          cssContentForPagedMediaProp,cssDefinition,cssDeprecated,
\          cssDimensionAttr,cssDimensionProp,cssError,
\          cssFlexibleBoxAttr,cssFlexibleBoxProp,cssFontAttr,
\          cssFontDescriptor,cssFontDescriptorAttr,
\          cssFontDescriptorBlock,cssFontDescriptorFunction,
\          cssFontDescriptorProp,cssFontProp,cssFunction,
\          cssFunctionComma,cssFunctionName,cssGeneratedContentAttr,
\          cssGeneratedContentProp,cssGradientAttr,cssGridAttr,
\          cssGridProp,cssHacks,cssHyerlinkAttr,cssHyerlinkProp,
\          cssIEUIAttr,cssIEUIProp,cssIdentifier,cssImportant,
\          cssInclude,cssIncludeKeyword,cssKeyFrame,
\          cssKeyFrameSelector,cssKeyFrameWrap,cssLineboxAttr,
\          cssLineboxProp,cssListAttr,cssListProp,cssMarginAttr,
\          cssMarqueeAttr,cssMarqueeProp,cssMedia,cssMediaAttr,
\          cssMediaBlock,cssMediaComma,cssMediaKeyword,cssMediaProp,
\          cssMediaType,cssMobileTextProp,cssMultiColumnAttr,
\          cssMultiColumnProp,cssNoise,cssPaddingAttr,cssPage,
\          cssPageMargin,cssPageProp,cssPagePseudo,cssPageWrap,
\          cssPagedMediaAttr,cssPagedMediaProp,cssPositioningAttr,
\          cssPositioningProp,cssPrintAttr,cssPrintProp,cssProp,
\          cssPseudoClass,cssPseudoClassFn,cssPseudoClassId,
\          cssPseudoClassLang,cssRenderAttr,cssRenderProp,cssRubyAttr,
\          cssRubyProp,cssSelectorOp,cssSelectorOp2,cssSpecialCharQ,
\          cssSpecialCharQQ,cssSpeechAttr,cssSpeechProp,cssStringQ,
\          cssStringQQ,cssTableAttr,cssTableProp,cssTagName,
\          cssTextAttr,cssTextProp,cssTransformAttr,cssTransformProp,
\          cssTransitionAttr,cssTransitionProp,cssUIAttr,cssUIProp,
\          cssURL,cssUnicodeEscape,cssUnicodeRange,cssUnitDecorators,
\          cssValueAngle,cssValueFrequency,cssValueInteger,
\          cssValueLength,cssValueNumber,cssValueTime,cssVend,
\          cssAttrRegion

syn region styledJsxTag start=/<style.*jsx.*>/ keepend end=+</style>+ containedin=jsxRegion contains=@XMLSyntax
syn region styledJsxTemplateString start=+`+ keepend contained containedin=styledJsxTag contains=@htmlCss,@CSS end=+`+


if exists('s:current_syntax')
  runtime! syntax/xml.vim
  let b:current_syntax=s:current_syntax
endif

