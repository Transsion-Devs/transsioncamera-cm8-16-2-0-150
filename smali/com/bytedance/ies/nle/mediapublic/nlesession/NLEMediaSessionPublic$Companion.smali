.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 62
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;Ljava/lang/String;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 34
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create(Ljava/lang/String;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;Ljava/lang/String;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;ILjava/lang/Object;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 48
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create(Ljava/lang/String;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p0

    return-object p0
.end method

.method private final innerInit()V
    .registers 1

    .line 72
    sget-object p0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->loadLibrary()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 5

    const-string v0, "mediaConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->innerInit()V

    .line 68
    new-instance p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    return-object p0
.end method

.method public final create(Ljava/lang/String;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 5

    const-string v0, "workSpace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surfaceHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->innerInit()V

    .line 40
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->setWorkSpace(Ljava/lang/String;)V

    .line 42
    sget-object p1, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->getLogLevel()Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->setMediaLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V

    .line 43
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->getEnableLogAsync()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->setEnableLogExecutor(Z)V

    .line 44
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-direct {p1, p0, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    return-object p1
.end method

.method public final create(Ljava/lang/String;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 5

    const-string v0, "workSpace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->innerInit()V

    .line 54
    new-instance p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->setWorkSpace(Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;

    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->getLogLevel()Lcom/bytedance/ies/nle/editor_jni/LogLevel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->setMediaLogLevel(Lcom/bytedance/ies/nle/editor_jni/LogLevel;)V

    .line 57
    invoke-virtual {p1}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublicConfig;->getEnableLogAsync()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->setEnableLogExecutor(Z)V

    .line 58
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    invoke-direct {p1, p0, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    return-object p1
.end method
