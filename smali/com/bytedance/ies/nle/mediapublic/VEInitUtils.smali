.class public final Lcom/bytedance/ies/nle/mediapublic/VEInitUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/nle/mediapublic/VEInitUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/nle/mediapublic/VEInitUtils;

    invoke-direct {v0}, Lcom/bytedance/ies/nle/mediapublic/VEInitUtils;-><init>()V

    sput-object v0, Lcom/bytedance/ies/nle/mediapublic/VEInitUtils;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/VEInitUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initVESDK(Landroid/content/Context;)V
    .registers 5

    const-string p0, "application"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 13
    invoke-static {p0}, Lcom/ss/android/vesdk/VESDK;->setAssetManagerEnable(Z)Z

    .line 15
    new-instance v0, Lcom/bef/effectsdk/AssetResourceFinder;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "model/"

    invoke-direct {v0, v1, v2}, Lcom/bef/effectsdk/AssetResourceFinder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ss/android/vesdk/VESDK;->setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VESDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p1, 0xf

    .line 23
    invoke-static {p1}, Lcom/ss/android/vesdk/VESDK;->setLogLevel(B)V

    const/4 p1, 0x3

    .line 24
    invoke-static {p1}, Lcom/ss/android/vesdk/VESDK;->setEffectLogLevel(I)V

    .line 27
    invoke-static {p0}, Lcom/ss/android/vesdk/VESDK;->setEnableStickerAmazing(Z)V

    const/16 p1, 0xa

    .line 31
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->setMaxImageBufferCount(I)I

    const p1, 0xc748a0

    .line 33
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->setOptConfig(I)I

    .line 36
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->setEnableEffectTransition(Z)I

    .line 39
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->setEnableEffectCanvas(Z)I

    .line 42
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->enableHighSpeed(Z)I

    return-void
.end method
