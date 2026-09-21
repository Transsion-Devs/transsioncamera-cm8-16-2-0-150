.class public final Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface$PickerMode;
    }
.end annotation


# static fields
.field public static final ARG_CUT_COMPRESS_ERROR_CODE:Ljava/lang/String; = "cut_compress_code"

.field public static final ARG_CUT_COMPRESS_ERROR_MSG:Ljava/lang/String; = "cut_compress_error"

.field public static final ARG_CUT_COMPRESS_PROGRESS:Ljava/lang/String; = "cut_compress_progress"

.field public static final ARG_CUT_COMPRESS_SOURCE:Ljava/lang/String; = "cut_compress_source"

.field public static final ARG_CUT_COMPRESS_TIME:Ljava/lang/String; = "cut_compress_time"

.field public static final ARG_PICKER_MODE:Ljava/lang/String; = "picker_mode"

.field public static final COMPRESS_CANCEL_CODE:I = -0x2712

.field public static final COMPRESS_FAILED_CODE:I = -0x2711

.field public static final CUT_TEMPLATE_ASPECT_RATIO:Ljava/lang/String; = "cut_template_aspect_ratio"

.field public static final CUT_TEMPLATE_HEIGHT:Ljava/lang/String; = "cut_template_height"

.field public static final CUT_TEMPLATE_WIDTH:Ljava/lang/String; = "cut_template_width"

.field public static final INSTANCE:Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface;

.field public static final INTERFACE_CLIP:Ljava/lang/String; = "com.ss.android.ugc.cut_ui.CLIP"

.field public static final INTERFACE_COMPRESS:Ljava/lang/String; = "com.ss.android.ugc.cut_ui.COMPRESS"

.field public static final INTERFACE_PICKER:Ljava/lang/String; = "com.ss.android.ugc.cut_ui.process.PICKER"

.field public static final INTERFACE_RECORD:Ljava/lang/String; = "com.ss.android.ugc.cut_ui_recorder.RECORD"

.field public static final KEY_COMPILE_CONFIG_BPS:Ljava/lang/String; = "key_compile_config_bps"

.field public static final KEY_COMPILE_CONFIG_FPS:Ljava/lang/String; = "key_compile_config_fps"

.field public static final KEY_COMPILE_CONFIG_IS_HW:Ljava/lang/String; = "key_compile_config_is_hw"

.field public static final KEY_ENTER_RECORD_FROM:Ljava/lang/String; = "key_enter_record_from"

.field public static final KEY_PROJECT_JSON:Ljava/lang/String; = "project_json_path_temp"

.field public static final KEY_TEMPLATE_VIDEO_COVER_URL:Ljava/lang/String; = "key_template_video_cover_url"

.field public static final KEY_TEMPLATE_VIDEO_URL:Ljava/lang/String; = "key_template_video_url"

.field public static final RECORD_FROM_ALBUM:I = 0x1

.field public static final RECORD_FROM_EDIT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface;->INSTANCE:Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    return p1
.end method


# virtual methods
.method public final createIntent(Landroid/content/Context;Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaze"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p2, v0}, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;->writeToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/ss/android/ugc/cut_ui/process/CutProcessInterface;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_25

    return-object v0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDataFromIntent(Landroid/content/Intent;)Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;
    .registers 2

    const-string p0, "intent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance p0, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Creator;

    invoke-direct {p0}, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Creator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData$Creator;->readFromIntent(Landroid/content/Intent;)Lcom/ss/android/ugc/cut_ui/process/ProcessMediaData;

    move-result-object p0

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method
