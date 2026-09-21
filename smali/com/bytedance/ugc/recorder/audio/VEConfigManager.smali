.class public final Lcom/bytedance/ugc/recorder/audio/VEConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ugc/recorder/audio/VEConfigManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ugc/recorder/audio/VEConfigManager;

    invoke-direct {v0}, Lcom/bytedance/ugc/recorder/audio/VEConfigManager;-><init>()V

    sput-object v0, Lcom/bytedance/ugc/recorder/audio/VEConfigManager;->INSTANCE:Lcom/bytedance/ugc/recorder/audio/VEConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/ss/android/vesdk/VEUserConfig;
    .registers 6

    .line 8
    new-instance p0, Lcom/ss/android/vesdk/VEUserConfig;

    invoke-direct {p0}, Lcom/ss/android/vesdk/VEUserConfig;-><init>()V

    .line 10
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 11
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_GraphRefactor:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 12
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 16
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 17
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableAudioGBURefactor:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 18
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 25
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 26
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseNewEngineEffectOpt:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/4 v4, 0x1

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 25
    invoke-direct {v0, v1, v4}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 31
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 32
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableGlobalEffect:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 37
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 38
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableFileInfoCache:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 37
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 43
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 44
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_PinRefactor:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 43
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 49
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 50
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseImageAllocator:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 49
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 55
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 56
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseMultiEffectOpt:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 55
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 61
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 62
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseGaussianOpt:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 61
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 67
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 68
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseRefaCanvasWrap:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 67
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 73
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 74
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxSoftwareVideoReaderCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v3, 0x9

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 73
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 79
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 80
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxSoftwareFreeReaderCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/4 v3, 0x2

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 79
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 85
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 86
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxImageTextureBufferCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v3, 0xa

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 85
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 91
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 92
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxImageTextureBufferWidth:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v3, 0x898

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 91
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 97
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 98
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxImageTextureBufferHeight:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 97
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 103
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 104
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_ForceDropFrameWithoutAudio:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 103
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 109
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 110
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxAudioReaderCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const v3, 0x7fffffff

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 109
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 115
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 116
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_MaxTexturePoolCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v3, 0x32

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 115
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 121
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 122
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_TexturePoolCleanCount:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    const/16 v3, 0x23

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 121
    invoke-direct {v0, v1, v3}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 127
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 128
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseEffectTransiton:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 127
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 133
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 134
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_ForceDetectFace:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 133
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 139
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 140
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableStickerAmazing:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 139
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 145
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 146
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_LoadImageOptimize:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 145
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 151
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 152
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableHighSpeedChange:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 151
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 157
    new-instance v0, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    .line 158
    sget-object v1, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_EnableVideoOutputCallback:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    .line 157
    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    return-object p0
.end method
