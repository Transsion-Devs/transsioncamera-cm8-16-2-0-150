.class public final Lcom/bytedance/ies/cutsame/veadapter/VEEditorConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createConfig()Lcom/ss/android/vesdk/VEUserConfig;
    .registers 5

    .line 7
    new-instance p0, Lcom/ss/android/vesdk/VEUserConfig;

    invoke-direct {p0}, Lcom/ss/android/vesdk/VEUserConfig;-><init>()V

    .line 8
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_GraphRefactor:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 9
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableAudioGBURefactor:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 10
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnbaleInfoStickerTrans:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 11
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableGlobalEffect:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 12
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableFileInfoCache:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 13
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_PinRefactor:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 14
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseImageAllocator:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 15
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseMultiEffectOpt:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 16
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseGaussianOpt:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 17
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseNewEngineEffectOpt:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 18
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseRefaCanvasWrap:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 19
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxSoftwareVideoReaderCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 20
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxSoftwareFreeReaderCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 21
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxImageTextureBufferCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 22
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxImageTextureBufferWidth:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v2, 0x898

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 23
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxImageTextureBufferHeight:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 24
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_ForceDropFrameWithoutAudio:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 25
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxAudioReaderCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 26
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxTexturePoolCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 27
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_TexturePoolCleanCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 28
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseEffectTransiton:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 29
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_ForceDetectFace:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 30
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableStickerAmazing:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 31
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_LoadImageOptimize:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 32
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableHighSpeedChange:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    return-object p0
.end method
