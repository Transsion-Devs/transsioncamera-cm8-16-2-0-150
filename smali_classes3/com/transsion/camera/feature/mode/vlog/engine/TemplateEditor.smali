.class public Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor;


# static fields
.field private static final END_VIDEO_AUDIO_FADE_DURATION:I = 0x3e8

.field private static final END_VIDEO_DURATION:I = 0x5dc

.field private static final END_VIDEO_TRANSLATION_DURATION:I = 0x3e8

.field private static final INDEX_720P_30FPS:I = 0x1

.field private static final STATE_BEFORE_COMPOSE:I = 0x3

.field private static final STATE_COMPILED:I = 0x7

.field private static final STATE_COMPILING:I = 0x6

.field private static final STATE_COMPOSED:I = 0x5

.field private static final STATE_COMPOSING:I = 0x4

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sDebug:Z = false


# instance fields
.field private final isLooping:Z

.field private isPlaying:Z

.field private final mConText:Landroid/content/Context;

.field private final mCurrentPage:I

.field private mCurrentState:I

.field private mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

.field private mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;

.field private volatile mDestroyed:Z

.field private final mEditorListener:Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

.field private final mLock:Ljava/lang/Object;

.field private volatile mNeedAutoStart:Z

.field private mOrientation:I

.field private mOriginMediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private volatile mPaused:Z

.field private mRotateDegree:Lcom/cutsame/solution/player/RotateDegree;

.field private mScaleH:F

.field private mScaleW:F

.field private mScreenFormType:I

.field private mTransX:I

.field private mTransY:I

.field private volatile mUserPaused:Z

.field private final mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

.field private volatile mbSurfaceReady:Z


# direct methods
.method public static synthetic $r8$lambda$7HKKDGCVO2szjBJwhV_sVP56YbA(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->lambda$pause$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$8IK_QmvdZdtTvEEDRAOMgMhJYGo(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Landroid/view/SurfaceView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->lambda$composeSource$1(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SvkNdGp8u0TFIfugrE2VuMlmEDs(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/SurfaceView;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->lambda$selectAndMatchTemplate$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/SurfaceView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n7ybl-Fe8I1rX5XtTob2I3uCgwU(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;ILandroid/content/Context;J)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->lambda$export$3(ILandroid/content/Context;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentPage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCutSamePlayer(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/CutSamePlayer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditorListener(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedAutoStart(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mNeedAutoStart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginMediaList(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginMediaList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginTemplateWrapItem(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotateDegree(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Lcom/cutsame/solution/player/RotateDegree;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mRotateDegree:Lcom/cutsame/solution/player/RotateDegree;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScaleH(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleH:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScaleW(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleW:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransX(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransY(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserPaused(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mUserPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmbSurfaceReady(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mbSurfaceReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedAutoStart(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mNeedAutoStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSdkState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mparsePlayState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->parsePlayState(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpreparePlay(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Landroid/view/SurfaceView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->preparePlay(Landroid/view/SurfaceView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentState(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateCurrentState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVlogAnalytics(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateVlogAnalytics()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_Editor"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;IZIILcom/transsion/camera/feature/mode/vlog/VlogHelper;Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;)V
    .registers 11

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mbSurfaceReady:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mPaused:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mUserPaused:Z

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mDestroyed:Z

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mNeedAutoStart:Z

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mConText:Landroid/content/Context;

    .line 120
    iput p5, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScreenFormType:I

    .line 121
    iput p6, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOrientation:I

    .line 122
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 123
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->fillOriginData(Z)V

    .line 125
    iput-object p7, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    .line 126
    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isLooping:Z

    .line 127
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentPage:I

    .line 128
    iput-object p8, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    .line 130
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateCurrentState(I)V

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updatePlayerDegree()V

    return-void
.end method

.method private checkLocalResource(Ljava/lang/String;)V
    .registers 6

    .line 285
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    .line 286
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLocalResource, dstPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_25

    return-void

    .line 293
    :cond_25
    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "template"

    if-eqz v0, :cond_59

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 296
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cutsame/solution/template/model/TemplateItem;->getTemplateUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->copyAssetFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 298
    :cond_59
    const-string p0, ".mp4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8c

    .line 300
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->copyAssetFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 305
    :cond_8c
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "resource/transitions_bundle"

    .line 306
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalVlogResRootPath()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 309
    :goto_9e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkLocalResource, assetSrc: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private checkSdkState()Z
    .registers 3

    .line 593
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameInitiator;->isReady()Z

    move-result v0

    if-nez v0, :cond_14

    .line 594
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "checkSdkState, but sdk is not ready, so quite."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->quitWithSdkNotInit()V

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method private createExportParam(I)Lcom/cutsame/solution/compile/CompileParam;
    .registers 8

    .line 826
    sget-object p0, Lcom/cutsame/solution/compile/ExportResolution;->V_1080P:Lcom/cutsame/solution/compile/ExportResolution;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 828
    sget-object p0, Lcom/cutsame/solution/compile/ExportResolution;->V_720P:Lcom/cutsame/solution/compile/ExportResolution;

    :cond_7
    move-object v1, p0

    .line 831
    new-instance v0, Lcom/cutsame/solution/compile/CompileParam;

    const/4 v2, 0x1

    const/high16 v3, 0x1800000

    const/16 v4, 0x1e

    const/16 v5, 0x23

    invoke-direct/range {v0 .. v5}, Lcom/cutsame/solution/compile/CompileParam;-><init>(Lcom/cutsame/solution/compile/ExportResolution;ZIII)V

    return-object v0
.end method

.method private disableLoopPlay()V
    .registers 2

    .line 603
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, v0}, Lcom/cutsame/solution/player/CutSamePlayer;->setLoopPlay(Z)V

    :cond_8
    return-void
.end method

.method private fillOriginData(Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getTemplateAnalyticsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->replaceTemplate(I)V

    .line 138
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->updateOriginTmplAnalyticsId(Ljava/lang/String;)V

    .line 140
    :cond_30
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginMediaList:Ljava/util/List;

    .line 141
    :goto_41
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_65

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginMediaList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->clone()Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_65
    return-void
.end method

.method private getCacheKey()Ljava/lang/String;
    .registers 1

    .line 870
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$composeSource$1(Landroid/view/SurfaceView;)V
    .registers 2

    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->prepareCompose()V

    .line 257
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->prepareSource(Landroid/view/SurfaceView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    .line 259
    :catch_7
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    return-void
.end method

.method private synthetic lambda$export$3(ILandroid/content/Context;J)V
    .registers 21

    move-object/from16 v1, p0

    .line 745
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->createExportParam(I)Lcom/cutsame/solution/compile/CompileParam;

    move-result-object v6

    .line 746
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mVlogHelper:Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->getTempVlogFilePath(Z)Ljava/lang/String;

    move-result-object v2

    .line 748
    new-instance v5, Lcom/cutsame/solution/draft/CutSameDraft;

    invoke-direct {v5}, Lcom/cutsame/solution/draft/CutSameDraft;-><init>()V

    .line 749
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {v0}, Lcom/cutsame/solution/player/CutSamePlayer;->getExportDraft()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_32

    const/4 v0, 0x5

    .line 751
    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateCurrentState(I)V

    .line 752
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    const-string v2, "draft is null"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v3, v4, v2}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onExportError(IIFLjava/lang/String;)V

    .line 753
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "export onCompileError, draft is null."

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_2f
    move-exception v0

    goto/16 :goto_a9

    .line 756
    :cond_32
    invoke-interface {v5, v0}, Lcom/cutsame/solution/draft/ICutSameDraft;->initWith(Ljava/lang/String;)V

    .line 758
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getLocalEndVideoPath()Ljava/lang/String;

    move-result-object v8

    .line 759
    invoke-direct {v1, v8}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkLocalResource(Ljava/lang/String;)V

    .line 760
    sget-object v0, Lcom/cutsame/solution/player/video/CutSameVideoManager;->Companion:Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;

    invoke-interface {v5}, Lcom/cutsame/solution/draft/ICutSameDraft;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v4

    new-instance v7, Lcom/cutsame/solution/player/video/MediaSource;

    const-string/jumbo v9, "video"

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x5dc

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v7 .. v14}, Lcom/cutsame/solution/player/video/MediaSource;-><init>(Ljava/lang/String;Ljava/lang/String;FJJ)V

    move-object/from16 v8, p2

    invoke-virtual {v0, v4, v8, v7}, Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;->addEndVideoToNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Landroid/content/Context;Lcom/cutsame/solution/player/video/MediaSource;)I

    .line 763
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/ResourceHelper;->getLocalEndVideoTransitionPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 764
    invoke-direct {v1, v9}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkLocalResource(Ljava/lang/String;)V

    .line 765
    invoke-interface {v5}, Lcom/cutsame/solution/draft/ICutSameDraft;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v4

    new-instance v8, Lcom/cutsame/solution/player/video/MediaSource;

    const-string/jumbo v10, "transition"

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x3e8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v15}, Lcom/cutsame/solution/player/video/MediaSource;-><init>(Ljava/lang/String;Ljava/lang/String;FJJ)V

    invoke-virtual {v0, v4, v8, v3}, Lcom/cutsame/solution/player/video/CutSameVideoManager$Companion;->addTransitionToNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;Lcom/cutsame/solution/player/video/MediaSource;Z)I

    .line 768
    sget-object v9, Lcom/cutsame/solution/player/audio/CutSameAudioManager;->Companion:Lcom/cutsame/solution/player/audio/CutSameAudioManager$Companion;

    invoke-interface {v5}, Lcom/cutsame/solution/draft/ICutSameDraft;->getModel()Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object v10

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x3e8

    invoke-virtual/range {v9 .. v14}, Lcom/cutsame/solution/player/audio/CutSameAudioManager$Companion;->addAudioFadeInOutToNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEModel;JJ)I

    const/4 v0, 0x6

    .line 770
    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateCurrentState(I)V

    .line 772
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-interface {v5}, Lcom/cutsame/solution/draft/ICutSameDraft;->getEditor()Lcom/bytedance/ies/nle/editor_jni/NLEEditor;

    move-result-object v8

    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {v0}, Lcom/cutsame/solution/player/CutSamePlayer;->getConfigCanvasSize()Lcom/bytedance/ies/cutsame/util/Size;

    move-result-object v9

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$3;-><init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Ljava/lang/String;JLcom/cutsame/solution/draft/ICutSameDraft;)V

    move-object v5, v0

    move-object v3, v6

    move-object v0, v7

    move-object v1, v8

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/cutsame/solution/player/CutSamePlayer;->compileNLEModel(Lcom/bytedance/ies/nle/editor_jni/NLEEditor;Ljava/lang/String;Lcom/cutsame/solution/compile/CompileParam;Lcom/bytedance/ies/cutsame/util/Size;Lcom/bytedance/ies/cutsame/veadapter/CompileListener;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a8} :catch_2f

    return-void

    .line 816
    :goto_a9
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "export, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    return-void
.end method

.method private synthetic lambda$pause$2()V
    .registers 1

    .line 677
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->cancelExport()V

    return-void
.end method

.method private synthetic lambda$selectAndMatchTemplate$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/SurfaceView;)V
    .registers 16

    .line 198
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "selectAndMatchTemplate, START"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;->findSuitedTemplate(Ljava/util/ArrayList;)Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    .line 201
    const-string v1, "selectAndMatchTemplate, but no template matched"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    goto/16 :goto_ad

    .line 204
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectAndMatchTemplate, findSuitedTemplate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;->getTemplate()Lcom/volcengine/ck/moment/base/CKMomentTemplate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;->getMediaList()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_42
    if-ge v4, v3, :cond_75

    .line 208
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_56

    .line 209
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->setSourceStartTime(J)V

    goto :goto_72

    .line 211
    :cond_56
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;

    invoke-virtual {v6}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedItem;->getExtractorResult()Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getStartTime()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->setSourceStartTime(J)V

    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 215
    :cond_75
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :cond_7a
    if-ge v3, v0, :cond_ad

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/volcengine/ck/highlight/data/HLTemplateMatchedInfo;->getTemplate()Lcom/volcengine/ck/moment/base/CKMomentTemplate;

    move-result-object v6

    invoke-virtual {v6}, Lcom/volcengine/ck/moment/base/CKMomentTemplate;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 217
    iput-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 223
    :cond_ad
    :goto_ad
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    if-eqz p2, :cond_e3

    .line 224
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object p2

    move v0, v2

    .line 225
    :goto_b6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e3

    .line 226
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 227
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v5

    .line 228
    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getHlResults()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v9

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v10

    .line 227
    invoke-virtual/range {v4 .. v11}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->fill(Ljava/lang/String;JLjava/util/List;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_e3
    const/4 p1, 0x1

    .line 232
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->fillOriginData(Z)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onTemplateMatchCompleted(J)V

    .line 235
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "selectAndMatchTemplate END, final template: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, p3, v2}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->composeSource(Landroid/view/SurfaceView;Z)V

    return-void
.end method

.method private parseComposeState(I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_32

    .line 554
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 551
    :pswitch_1a
    const-string p0, "state_compiled"

    return-object p0

    .line 548
    :pswitch_1d
    const-string p0, "state_compiling"

    return-object p0

    .line 545
    :pswitch_20
    const-string p0, "state_composed"

    return-object p0

    .line 542
    :pswitch_23
    const-string p0, "state_composing"

    return-object p0

    .line 539
    :pswitch_26
    const-string p0, "state_before_compose"

    return-object p0

    .line 536
    :pswitch_29
    const-string p0, "state_prepared"

    return-object p0

    .line 533
    :pswitch_2c
    const-string p0, "state_preparing"

    return-object p0

    .line 530
    :pswitch_2f
    const-string p0, "state_init"

    return-object p0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private parsePlayState(I)Ljava/lang/String;
    .registers 4

    packed-switch p1, :pswitch_data_30

    .line 585
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 582
    :pswitch_1a
    const-string p0, "play_state_destroyed"

    return-object p0

    .line 579
    :pswitch_1d
    const-string p0, "play_state_error"

    return-object p0

    .line 576
    :pswitch_20
    const-string p0, "play_state_playing"

    return-object p0

    .line 573
    :pswitch_23
    const-string p0, "play_state_ve_paused"

    return-object p0

    .line 567
    :pswitch_26
    const-string p0, "play_state_ve_prepared"

    return-object p0

    .line 570
    :pswitch_29
    const-string p0, "play_state_prepared"

    return-object p0

    .line 564
    :pswitch_2c
    const-string p0, "play_state_idle"

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x3e9
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private prepareCompose()V
    .registers 9

    .line 266
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->release()Z

    move-result v0

    if-nez v0, :cond_e

    .line 268
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "prepareCompose, but sdk is not ready, so quite."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->releaseAllSdkResource()V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateLocalZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkLocalResource(Ljava/lang/String;)V

    .line 273
    new-instance v1, Lcom/cutsame/solution/source/SourceInfo;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 274
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getTemplateUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 275
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getMd5()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 276
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cutsame/solution/template/model/TemplateItem;->getTemplateType()I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    .line 277
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateLocalZipPath()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/cutsame/solution/source/CacheConfig;

    invoke-direct {v7}, Lcom/cutsame/solution/source/CacheConfig;-><init>()V

    const-string v6, ""

    invoke-direct/range {v1 .. v7}, Lcom/cutsame/solution/source/SourceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cutsame/solution/source/CacheConfig;)V

    .line 280
    sget-object v0, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    invoke-virtual {v0, v1}, Lcom/cutsame/solution/init/CutSameSolution;->createCutSameSource(Lcom/cutsame/solution/source/SourceInfo;)Lcom/cutsame/solution/source/CutSameSource;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;

    .line 281
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameContext;->addCutSameSource(Ljava/lang/String;Lcom/cutsame/solution/source/CutSameSource;)V

    return-void
.end method

.method private declared-synchronized preparePlay(Landroid/view/SurfaceView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceView;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/MediaItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ugc/cut_ui/TextItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 428
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "preparePlay start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 430
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateCurrentState(I)V

    .line 431
    sget-object v1, Lcom/cutsame/solution/init/CutSameSolution;->INSTANCE:Lcom/cutsame/solution/init/CutSameSolution;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;

    invoke-virtual {v1, p1, v2}, Lcom/cutsame/solution/init/CutSameSolution;->createCutSamePlayer(Landroid/view/SurfaceView;Lcom/cutsame/solution/source/CutSameSource;)Lcom/cutsame/solution/player/CutSamePlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    .line 432
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameContext;->addCutCutSamePlayer(Ljava/lang/String;Lcom/cutsame/solution/player/CutSamePlayer;)V

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)V

    invoke-virtual {p1, v1}, Lcom/cutsame/solution/player/CutSamePlayer;->registerPlayerStateListener(Lcom/cutsame/solution/player/PlayerStateListener;)V

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparePlay real start, mDestroyed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mDestroyed:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 518
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mDestroyed:Z

    if-nez p1, :cond_52

    .line 519
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {p1, p2, p3}, Lcom/cutsame/solution/player/CutSamePlayer;->preparePlay(Ljava/util/List;Ljava/util/List;)V

    .line 520
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isLooping:Z

    invoke-virtual {p1, p2}, Lcom/cutsame/solution/player/CutSamePlayer;->setLoopPlay(Z)V

    goto :goto_52

    :catchall_50
    move-exception p1

    goto :goto_59

    .line 523
    :cond_52
    :goto_52
    const-string p1, "preparePlay end"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_50

    .line 524
    monitor-exit p0

    return-void

    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_50

    throw p1
.end method

.method private declared-synchronized prepareSource(Landroid/view/SurfaceView;)V
    .registers 4

    monitor-enter p0

    .line 318
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-nez v0, :cond_7

    .line 319
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 322
    :try_start_8
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateCurrentState(I)V

    .line 324
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepareSource start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Landroid/view/SurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/cutsame/solution/source/CutSameSource;->prepareSource(Lcom/cutsame/solution/source/PrepareSourceListener;)V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1e

    .line 422
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method private declared-synchronized release()Z
    .registers 5

    monitor-enter p0

    .line 844
    :try_start_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3d

    if-nez v0, :cond_a

    .line 845
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 848
    :cond_a
    :try_start_a
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release begin, mCutSameSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 849
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 850
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameContext;->releaseCutSameSource(Ljava/lang/String;)V

    .line 851
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSameSource:Lcom/cutsame/solution/source/CutSameSource;

    goto :goto_3f

    :catchall_3d
    move-exception v0

    goto :goto_65

    .line 854
    :cond_3f
    :goto_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release player, mCutSamePlayer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    if-eqz v0, :cond_62

    .line 857
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameContext;->releaseCutSamePlayer(Ljava/lang/String;)V

    .line 858
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;
    :try_end_62
    .catchall {:try_start_a .. :try_end_62} :catchall_3d

    .line 861
    :cond_62
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_65
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_3d

    throw v0
.end method

.method private releaseAllSdkResource()V
    .registers 1

    .line 865
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameContext;->releaseAllCutSameSource()V

    .line 866
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/engine/CutSameContext;->releaseAllCutSamePlayer()V

    return-void
.end method

.method private restoreLoopPlayIfNeeded()V
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isLooping:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    .line 610
    invoke-virtual {v0, p0}, Lcom/cutsame/solution/player/CutSamePlayer;->setLoopPlay(Z)V

    :cond_c
    return-void
.end method

.method private updateCurrentState(I)V
    .registers 5

    .line 313
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentState, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->parseComposeState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 314
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentState:I

    return-void
.end method

.method private updatePlayerDegree()V
    .registers 8

    .line 884
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScreenFormType:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne v0, v1, :cond_7b

    .line 885
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mConText:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 886
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOrientation:I

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_58

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_4b

    const/16 v4, 0x10e

    if-eq v1, v4, :cond_29

    .line 914
    sget-object v0, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_NONE:Lcom/cutsame/solution/player/RotateDegree;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mRotateDegree:Lcom/cutsame/solution/player/RotateDegree;

    .line 915
    iput v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleW:F

    .line 916
    iput v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleH:F

    .line 917
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransX:I

    .line 918
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransY:I

    goto :goto_87

    .line 904
    :cond_29
    sget-object v1, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_90:Lcom/cutsame/solution/player/RotateDegree;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mRotateDegree:Lcom/cutsame/solution/player/RotateDegree;

    .line 905
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width_expand_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width_expand_0:I

    .line 906
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 907
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleW:F

    .line 908
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleH:F

    .line 909
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransX:I

    .line 910
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransY:I

    goto :goto_87

    .line 897
    :cond_4b
    sget-object v0, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_180:Lcom/cutsame/solution/player/RotateDegree;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mRotateDegree:Lcom/cutsame/solution/player/RotateDegree;

    .line 898
    iput v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleW:F

    .line 899
    iput v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleH:F

    .line 900
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransX:I

    .line 901
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransY:I

    goto :goto_87

    .line 888
    :cond_58
    sget-object v1, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_270:Lcom/cutsame/solution/player/RotateDegree;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mRotateDegree:Lcom/cutsame/solution/player/RotateDegree;

    .line 889
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width_expand_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_width_expand_0:I

    .line 890
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 891
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleW:F

    .line 892
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleH:F

    .line 893
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_player_translate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransX:I

    .line 894
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransY:I

    goto :goto_87

    .line 922
    :cond_7b
    sget-object v0, Lcom/cutsame/solution/player/RotateDegree;->ROTATE_NONE:Lcom/cutsame/solution/player/RotateDegree;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mRotateDegree:Lcom/cutsame/solution/player/RotateDegree;

    .line 923
    iput v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleW:F

    .line 924
    iput v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleH:F

    .line 925
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransX:I

    .line 926
    iput v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransY:I

    .line 929
    :goto_87
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    if-eqz v0, :cond_a0

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 930
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mRotateDegree:Lcom/cutsame/solution/player/RotateDegree;

    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleW:F

    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScaleH:F

    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransX:I

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mTransY:I

    invoke-virtual/range {v1 .. v6}, Lcom/cutsame/solution/player/CutSamePlayer;->rotateDisplay(Lcom/cutsame/solution/player/RotateDegree;FFII)V

    :cond_a0
    return-void
.end method

.method private updateVlogAnalytics()V
    .registers 3

    .line 935
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->updateCurrentPage(I)V

    .line 936
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->updateTemplateWrapItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized autoDisposePlay()V
    .registers 4

    monitor-enter p0

    .line 616
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoDisposePlay, isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 618
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_3a

    if-nez v1, :cond_21

    .line 619
    monitor-exit p0

    return-void

    .line 622
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_3a

    if-nez v1, :cond_27

    .line 623
    monitor-exit p0

    return-void

    .line 626
    :cond_27
    :try_start_27
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    .line 627
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mUserPaused:Z

    .line 628
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mNeedAutoStart:Z

    .line 629
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->disableLoopPlay()V

    .line 630
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {v1}, Lcom/cutsame/solution/player/CutSamePlayer;->pause()V

    goto :goto_46

    :catchall_3a
    move-exception v0

    goto :goto_4d

    .line 632
    :cond_3c
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mUserPaused:Z

    .line 633
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->restoreLoopPlayIfNeeded()V

    .line 634
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {v1}, Lcom/cutsame/solution/player/CutSamePlayer;->start()V

    .line 636
    :goto_46
    const-string v1, "autoDisposePlay end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_3a

    .line 637
    monitor-exit p0

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_3a

    throw v0
.end method

.method public cancelExport()V
    .registers 4

    .line 836
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelExport, mCurrentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentState:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->parseComposeState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 837
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_30

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x5

    .line 838
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateCurrentState(I)V

    .line 839
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/player/CutSamePlayer;->cancelCompile()V

    :cond_30
    return-void
.end method

.method public composeSource(Landroid/view/SurfaceView;Z)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onComposeStarted()V

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updateCurrentState(I)V

    if-nez p2, :cond_2d

    .line 247
    :try_start_b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->prepareCompose()V

    .line 248
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->prepareSource(Landroid/view/SurfaceView;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 250
    sget-object p2, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composeSource, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    return-void

    .line 254
    :cond_2d
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Landroid/view/SurfaceView;)V

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 941
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "destroy begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 942
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mDestroyed:Z

    .line 943
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->release()Z

    .line 944
    const-string p0, "destroy end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public export(Landroid/content/Context;I)V
    .registers 11

    .line 734
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "export START"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 743
    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$$ExternalSyntheticLambda1;

    const-wide/16 v6, 0x0

    move-object v3, p0

    move-object v5, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;ILandroid/content/Context;J)V

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isComposedState()Z
    .registers 2

    .line 664
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentState:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public onScreenFormChanged(I)V
    .registers 2

    .line 879
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mScreenFormType:I

    .line 880
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updatePlayerDegree()V

    return-void
.end method

.method public onSurfaceChanged()V
    .registers 1

    return-void
.end method

.method public onSurfaceCreated()V
    .registers 4

    .line 641
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated, mCurrentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentState:I

    .line 642
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->parseComposeState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 645
    :try_start_20
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mbSurfaceReady:Z

    .line 646
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 647
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_31

    .line 649
    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_2d

    throw p0
.end method

.method public onSurfaceDestroyed()V
    .registers 2

    const/4 v0, 0x0

    .line 659
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mbSurfaceReady:Z

    return-void
.end method

.method public pause()V
    .registers 5

    const/4 v0, 0x1

    .line 674
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mPaused:Z

    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mNeedAutoStart:Z

    .line 677
    :try_start_6
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_16} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_16} :catch_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1e

    .line 679
    :catch_17
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause cancelExport failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 681
    :goto_1e
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->pausePlay()V

    return-void
.end method

.method public pausePlay()V
    .registers 4

    .line 699
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePlay, isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 700
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 704
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 705
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    return-void

    .line 709
    :cond_27
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->disableLoopPlay()V

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {v0}, Lcom/cutsame/solution/player/CutSamePlayer;->pause()V

    .line 711
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    return-void
.end method

.method public replaceSource(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)Z
    .registers 20

    move-object/from16 v0, p0

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_1b

    goto/16 :goto_ae

    :cond_1b
    move v2, v3

    .line 159
    :goto_1c
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginMediaList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_43

    .line 160
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginMediaList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 161
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 162
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_46

    if-ge v2, v7, :cond_43

    .line 164
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not switch because segment fill num not satisfied"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    :cond_43
    move-object/from16 v1, p1

    goto :goto_a1

    .line 171
    :cond_46
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v8

    .line 172
    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v10

    add-long/2addr v10, v8

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-lez v6, :cond_60

    .line 173
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v5

    sub-long/2addr v8, v5

    :cond_60
    move-wide v12, v8

    .line 176
    iget v5, v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentPage:I

    if-ne v5, v7, :cond_81

    .line 177
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getPortraitSource()Ljava/lang/String;

    move-result-object v11

    move-wide v13, v12

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getLandscapeSource()Ljava/lang/String;

    move-result-object v12

    .line 178
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v15

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v16

    .line 177
    invoke-virtual/range {v10 .. v17}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->fill(Ljava/lang/String;Ljava/lang/String;JIJ)V

    goto :goto_9d

    :cond_81
    move-wide v13, v12

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object v11

    move-wide v12, v13

    .line 181
    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getHlResults()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v15

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v16

    .line 180
    invoke-virtual/range {v10 .. v17}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->fill(Ljava/lang/String;JLjava/util/List;IJ)V

    :goto_9d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1c

    .line 185
    :goto_a1
    iput-object v1, v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    const/4 v1, 0x1

    .line 186
    iput-boolean v1, v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mNeedAutoStart:Z

    .line 187
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->replaceTemplate(I)V

    return v1

    .line 155
    :cond_ae
    :goto_ae
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not switch because segment size is not satisfied"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mPaused:Z

    return-void
.end method

.method public seekTo(IZ)V
    .registers 6

    .line 716
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo, mCurrentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentState:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->parseComposeState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 717
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCurrentState:I

    if-ne v0, v1, :cond_2d

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 718
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cutsame/solution/player/CutSamePlayer;->seekTo(IZLkotlin/jvm/functions/Function1;)V

    :cond_2d
    return-void
.end method

.method public selectAndMatchTemplate(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/SurfaceView;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;",
            "Landroid/view/SurfaceView;",
            ")V"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectAndMatchTemplate, hlSegmentList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mEditorListener:Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/vlog/engine/ITemplateEditor$IEditorListener;->onTemplateMatchStarted()V

    .line 197
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/SurfaceView;)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVolume(Ljava/lang/String;F)V
    .registers 3

    return-void
.end method

.method public startPlay()V
    .registers 4

    .line 686
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay, isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->checkSdkState()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_28

    .line 692
    :cond_1f
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->isPlaying:Z

    if-nez v0, :cond_28

    .line 693
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mCutSamePlayer:Lcom/cutsame/solution/player/CutSamePlayer;

    invoke-virtual {p0}, Lcom/cutsame/solution/player/CutSamePlayer;->start()V

    :cond_28
    :goto_28
    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 874
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOrientation:I

    .line 875
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->updatePlayerDegree()V

    return-void
.end method

.method public updateOriginData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->mOriginTemplateWrapItem:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/engine/TemplateEditor;->fillOriginData(Z)V

    return-void
.end method

.method public updateText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
