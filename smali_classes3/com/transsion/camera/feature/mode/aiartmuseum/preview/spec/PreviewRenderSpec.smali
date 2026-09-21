.class public Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;
.source "SourceFile"


# static fields
.field public static final PREVIEW_TOUCH_RIGHT_MARGIN:I

.field private static final PREVIEW_TOUCH_TOP_MARGIN_16_9:I

.field private static final PREVIEW_TOUCH_TOP_MARGIN_1_1:I

.field private static final PREVIEW_TOUCH_TOP_MARGIN_4_3:I

.field private static final PREVIEW_TOUCH_TOP_MARGIN_FULL:I

.field private static final PREVIEW_TOUCH_TOP_THRESHOLD_FULL:I

.field private static final PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_16_9:I

.field private static final PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_1_1:I

.field private static final PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_4_3:I

.field private static final PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_FULL:I

.field public static final PREVIEW_WINDOW_RIGHT_MARGIN:F

.field private static final PREVIEW_WINDOW_TOP_MARGIN_16_9:F

.field private static final PREVIEW_WINDOW_TOP_MARGIN_1_1:F

.field private static final PREVIEW_WINDOW_TOP_MARGIN_4_3:F

.field private static final PREVIEW_WINDOW_TOP_MARGIN_FULL:F

.field public static final STYLE_PREVIEW_SCALE_RATIO:F = 0.2777778f

.field private static final sPreviewTouchTopMarginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreviewTouchTranslationYThresholdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreviewWindowTopMarginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetPREVIEW_TOUCH_TOP_MARGIN_16_9()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_MARGIN_16_9:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREVIEW_TOUCH_TOP_MARGIN_1_1()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_MARGIN_1_1:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREVIEW_TOUCH_TOP_MARGIN_4_3()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_MARGIN_4_3:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_16_9()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_16_9:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_1_1()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_1_1:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_4_3()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_4_3:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREVIEW_WINDOW_TOP_MARGIN_16_9()F
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_TOP_MARGIN_16_9:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREVIEW_WINDOW_TOP_MARGIN_1_1()F
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_TOP_MARGIN_1_1:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetPREVIEW_WINDOW_TOP_MARGIN_4_3()F
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_TOP_MARGIN_4_3:F

    return v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 26
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_margin_top_1_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_MARGIN_1_1:I

    .line 28
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_margin_top_4_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_MARGIN_4_3:I

    .line 30
    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_margin_top_16_9:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_MARGIN_16_9:I

    .line 32
    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_margin_top_full:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_MARGIN_FULL:I

    .line 34
    sget-object v4, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 35
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_margin_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_RIGHT_MARGIN:I

    .line 37
    sget-object v5, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 38
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_translation_top_threshold_full:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_THRESHOLD_FULL:I

    .line 40
    sget-object v5, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 41
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_translation_y_threshold_1_1:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_1_1:I

    .line 42
    sget-object v5, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 43
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_translation_y_threshold_4_3:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_4_3:I

    .line 44
    sget-object v5, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_translation_y_threshold_16_9:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_16_9:I

    .line 46
    sget-object v5, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 47
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$dimen;->ai_art_museum_style_preview_translation_y_threshold_full:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_FULL:I

    int-to-float v0, v0

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v0, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v0, v6

    const v7, 0x3e8e38e4

    div-float/2addr v0, v7

    .line 49
    sput v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_TOP_MARGIN_1_1:F

    int-to-float v0, v1

    const/high16 v1, 0x44b40000    # 1440.0f

    div-float/2addr v0, v1

    neg-float v0, v0

    mul-float/2addr v0, v6

    div-float/2addr v0, v7

    .line 51
    sput v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_TOP_MARGIN_4_3:F

    int-to-float v0, v2

    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr v0, v1

    neg-float v0, v0

    mul-float/2addr v0, v6

    div-float/2addr v0, v7

    .line 53
    sput v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_TOP_MARGIN_16_9:F

    int-to-float v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 55
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 56
    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getCurrentRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    neg-float v0, v0

    mul-float/2addr v0, v6

    div-float/2addr v0, v7

    sput v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_TOP_MARGIN_FULL:F

    int-to-float v0, v4

    div-float/2addr v0, v5

    neg-float v0, v0

    mul-float/2addr v0, v6

    div-float/2addr v0, v7

    .line 58
    sput v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_RIGHT_MARGIN:F

    .line 61
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->sPreviewWindowTopMarginMap:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->sPreviewTouchTopMarginMap:Ljava/util/Map;

    .line 73
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->sPreviewTouchTranslationYThresholdMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;-><init>()V

    return-void
.end method

.method public static getPreviewTouchTopMargin(II)I
    .registers 2

    .line 89
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;->getRatioSpec(II)Ljava/lang/String;

    move-result-object p0

    .line 90
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->sPreviewTouchTopMarginMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_11

    .line 92
    sget p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_MARGIN_FULL:I

    return p0

    .line 94
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getPreviewTouchTopThreshold(II)I
    .registers 2

    .line 98
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;->getRatioSpec(II)Ljava/lang/String;

    move-result-object p0

    .line 99
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->sPreviewTouchTopMarginMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_11

    .line 101
    sget p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TOP_THRESHOLD_FULL:I

    return p0

    .line 103
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getPreviewTouchTranslationYThreshold(II)I
    .registers 2

    .line 107
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;->getRatioSpec(II)Ljava/lang/String;

    move-result-object p0

    .line 108
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->sPreviewTouchTranslationYThresholdMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_11

    .line 110
    sget p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_TOUCH_TRANSLATION_Y_THRESHOLD_FULL:I

    return p0

    .line 112
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getPreviewWindowTopMargin(II)F
    .registers 2

    .line 80
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/BaseRenderSpec;->getRatioSpec(II)Ljava/lang/String;

    move-result-object p0

    .line 81
    sget-object p1, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->sPreviewWindowTopMarginMap:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_11

    .line 83
    sget p0, Lcom/transsion/camera/feature/mode/aiartmuseum/preview/spec/PreviewRenderSpec;->PREVIEW_WINDOW_TOP_MARGIN_FULL:F

    return p0

    .line 85
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method
