.class public final Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/nle/editor_jni/INLEMediaSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;


# instance fields
.field private final algorithmApiInternal$delegate:Lkotlin/Lazy;

.field private final brushApiInternal$delegate:Lkotlin/Lazy;

.field private final effectApiInternal$delegate:Lkotlin/Lazy;

.field private final exporterApiInternal$delegate:Lkotlin/Lazy;

.field private final filterApiInternal$delegate:Lkotlin/Lazy;

.field private mHasDelete:Z

.field private final mattingRuntimeApiInternal$delegate:Lkotlin/Lazy;

.field private final mediaConfig:Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;

.field private final mediaLifeCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

.field private final mediaRuntimeApiInternal$delegate:Lkotlin/Lazy;

.field private final mediaSession$delegate:Lkotlin/Lazy;

.field private final mediaSettingApiInternal$delegate:Lkotlin/Lazy;

.field private final mvApiInternal$delegate:Lkotlin/Lazy;

.field private final nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

.field private final playerApiInternal$delegate:Lkotlin/Lazy;

.field private final stickerApiInternal$delegate:Lkotlin/Lazy;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
    .registers 5

    const-string v0, "mediaConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaConfig:Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;

    .line 18
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 19
    iput-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    .line 76
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaSession$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaSession$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaSession$delegate:Lkotlin/Lazy;

    .line 79
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;Landroid/view/SurfaceHolder;)V

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaLifeCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    .line 81
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$playerApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$playerApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->playerApiInternal$delegate:Lkotlin/Lazy;

    .line 87
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaRuntimeApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaRuntimeApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaRuntimeApiInternal$delegate:Lkotlin/Lazy;

    .line 94
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mattingRuntimeApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mattingRuntimeApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mattingRuntimeApiInternal$delegate:Lkotlin/Lazy;

    .line 101
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaSettingApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaSettingApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaSettingApiInternal$delegate:Lkotlin/Lazy;

    .line 107
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$filterApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$filterApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->filterApiInternal$delegate:Lkotlin/Lazy;

    .line 113
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mvApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mvApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mvApiInternal$delegate:Lkotlin/Lazy;

    .line 119
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$exporterApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$exporterApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->exporterApiInternal$delegate:Lkotlin/Lazy;

    .line 125
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$algorithmApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$algorithmApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->algorithmApiInternal$delegate:Lkotlin/Lazy;

    .line 131
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$brushApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$brushApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->brushApiInternal$delegate:Lkotlin/Lazy;

    .line 137
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$stickerApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$stickerApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->stickerApiInternal$delegate:Lkotlin/Lazy;

    .line 144
    new-instance p1, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$effectApiInternal$2;

    invoke-direct {p1, p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$effectApiInternal$2;-><init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->effectApiInternal$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 16
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
    .registers 5

    const-string v0, "mediaConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    .line 28
    :cond_9
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    :goto_d
    invoke-direct {p0, p1, v0, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    .line 29
    iput-object p2, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->surfaceView:Landroid/view/SurfaceView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move-object p3, v0

    .line 24
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    return-void
.end method

.method public static final synthetic access$getMediaConfig$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaConfig:Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;

    return-object p0
.end method

.method public static final synthetic access$getMediaLifeCycleManager$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaLifeCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    return-object p0
.end method

.method public static final synthetic access$getMediaSession(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNleEditor$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEEditor;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->nleEditor:Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    return-object p0
.end method

.method public static final synthetic access$getSurfaceView$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Landroid/view/SurfaceView;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->surfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public static final create(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 4

    .line 0
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/String;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 4

    .line 0
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create(Ljava/lang/String;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/String;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;
    .registers 4

    .line 0
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->Companion:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$Companion;->create(Ljava/lang/String;Landroid/view/SurfaceView;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    move-result-object p0

    return-object p0
.end method

.method private final getAlgorithmApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->algorithmApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;

    return-object p0
.end method

.method private final getBrushApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->brushApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;

    return-object p0
.end method

.method private final getEffectApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->effectApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;

    return-object p0
.end method

.method private final getExporterApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->exporterApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    return-object p0
.end method

.method private final getFilterApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEFilterRuntimeImplPublic;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->filterApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEFilterRuntimeImplPublic;

    return-object p0
.end method

.method private final getMattingRuntimeApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mattingRuntimeApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;

    return-object p0
.end method

.method private final getMediaRuntimeApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaRuntimeApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;

    return-object p0
.end method

.method private final getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaSession$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    return-object p0
.end method

.method private final getMediaSettingApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaSettingApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;

    return-object p0
.end method

.method private final getMvApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mvApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;

    return-object p0
.end method

.method private final getPlayerApiInternal()Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->playerApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    return-object p0
.end method

.method private final getStickerApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->stickerApiInternal$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;

    return-object p0
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaConfig:Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;->delete()V

    .line 216
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getDataSource()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEModel;->delete()V

    .line 217
    :goto_13
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->delete()V

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mHasDelete:Z

    return-void
.end method

.method public getAlgorithmApi()Lcom/bytedance/ies/nle/editor_jni/INLERhythmPointRuntime;
    .registers 1

    .line 194
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getAlgorithmApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLERhythmPointRuntimeImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getBrushApi()Lcom/bytedance/ies/nle/editor_jni/INLEBrushRuntime;
    .registers 1

    .line 199
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getBrushApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEBrushRuntimeImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getDataSource()Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 1

    .line 152
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getDataSource()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    return-object p0
.end method

.method public getEffectApi()Lcom/bytedance/ies/nle/editor_jni/INLEEffectRuntime;
    .registers 1

    .line 207
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getEffectApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEEffectRuntimeImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getExporterApi()Lcom/bytedance/ies/nle/editor_jni/INLEExporter;
    .registers 1

    .line 190
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getExporterApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEExporterImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getFilterApi()Lcom/bytedance/ies/nle/editor_jni/INLEFilterRuntime;
    .registers 1

    .line 176
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getFilterApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEFilterRuntimeImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getMVApi()Lcom/bytedance/ies/nle/editor_jni/INLEMVInfo;
    .registers 1

    .line 180
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMvApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMVInfoImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getMattingApi()Lcom/bytedance/ies/nle/editor_jni/INLEMattingRuntime;
    .registers 1

    .line 172
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMattingRuntimeApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMattingRuntimeImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getMediaRuntimeApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaRuntime;
    .registers 1

    .line 164
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaRuntimeApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaRuntimeImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getMediaSettingApi()Lcom/bytedance/ies/nle/editor_jni/INLEMediaSettings;
    .registers 1

    .line 168
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSettingApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;

    move-result-object p0

    return-object p0
.end method

.method public getPlayerApi()Lcom/bytedance/ies/nle/editor_jni/INLEPlayer;
    .registers 1

    .line 160
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getPlayerApiInternal()Lcom/bytedance/ies/nle/mediapublic/NLEPlayerPublic;

    move-result-object p0

    return-object p0
.end method

.method public getStickerApi()Lcom/bytedance/ies/nle/editor_jni/INLEStickerRuntime;
    .registers 1

    .line 203
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getStickerApiInternal()Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEStickerRunTimeImlPublic;

    move-result-object p0

    return-object p0
.end method

.method public hasDelete()Z
    .registers 1

    .line 222
    iget-boolean p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mHasDelete:Z

    return p0
.end method

.method public final initVeBufferAuth(Landroid/content/Context;Ljava/lang/String;[B)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jarray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->initVeBufferAuth(Ljava/lang/Object;Ljava/lang/String;[B)V

    return-void
.end method

.method public setDataSource(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V
    .registers 2

    .line 156
    invoke-direct {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->getMediaSession()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->setDataSource(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)V

    return-void
.end method

.method public updateSurfaceView(Landroid/view/SurfaceView;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->surfaceView:Landroid/view/SurfaceView;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    .line 185
    :cond_6
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_a
    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 186
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaLifeCycleManager:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaLifeCycleManager;->updateCallback(Landroid/view/SurfaceHolder;)V

    return-void
.end method
