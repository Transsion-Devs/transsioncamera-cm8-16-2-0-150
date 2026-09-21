.class public Lcom/transsion/camera/utils/videoquality/SprdVideoQualityConfig;
.super Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadBackCameraPictureSizeConfigs()Ljava/util/Map;
    .registers 5

    .line 35
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0xb

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xa00

    const/16 v3, 0x5a0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected loadBackCameraProfileConfigs()Ljava/util/Map;
    .registers 15

    .line 17
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x8

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;

    const v12, 0xbb80

    const/4 v13, 0x2

    const/16 v2, 0x1e

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x2

    const v6, 0x2dc6c00

    const/16 v7, 0x1e

    const/16 v8, 0xf00

    const/16 v9, 0x870

    const/4 v10, 0x3

    const v11, 0x3e800

    invoke-direct/range {v1 .. v13}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;-><init>(IIIIIIIIIIII)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;

    const v12, 0xac44

    const/4 v13, 0x1

    const/16 v2, 0x3c

    const/16 v3, 0xb

    const/4 v5, 0x5

    const v6, 0x17d7840

    const/16 v8, 0x5a0

    const/16 v9, 0xa00

    const v11, 0x17700

    invoke-direct/range {v1 .. v13}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;-><init>(IIIIIIIIIIII)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;

    const v12, 0xbb80

    const/4 v13, 0x2

    const/16 v2, 0x1e

    const/4 v3, 0x6

    const/4 v5, 0x2

    const v6, 0x112a880

    const/16 v8, 0x780

    const/16 v9, 0x438

    const v11, 0x3e800

    invoke-direct/range {v1 .. v13}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;-><init>(IIIIIIIIIIII)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected loadFrontCameraPictureSizeConfigs()Ljava/util/Map;
    .registers 5

    .line 44
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0xb

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xa00

    const/16 v3, 0x5a0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected loadFrontCameraProfileConfigs()Ljava/util/Map;
    .registers 15

    .line 26
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x6

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;

    const v12, 0xbb80

    const/4 v13, 0x2

    const/16 v2, 0x1e

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x2

    const v6, 0xd59f80

    const/16 v7, 0x1e

    const/16 v8, 0x780

    const/16 v9, 0x438

    const/4 v10, 0x3

    const v11, 0x1f400

    invoke-direct/range {v1 .. v13}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;-><init>(IIIIIIIIIIII)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xb

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;

    const v12, 0xac44

    const/4 v13, 0x1

    const/16 v2, 0x3c

    const/16 v3, 0xb

    const/4 v5, 0x5

    const v6, 0x17d7840

    const/16 v8, 0x5a0

    const/16 v9, 0xa00

    const v11, 0x17700

    invoke-direct/range {v1 .. v13}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;-><init>(IIIIIIIIIIII)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;

    const/4 v13, 0x2

    const/16 v2, 0x1e

    const/4 v3, 0x5

    const/4 v5, 0x2

    const v6, 0x7a1200

    const/16 v8, 0x500

    const/16 v9, 0x2d0

    const v11, 0x1f400

    invoke-direct/range {v1 .. v13}, Lcom/transsion/camera/utils/videoquality/BaseVideoQualityConfig$ProfileConfig;-><init>(IIIIIIIIIIII)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected setPlatformSpecificConfigs(Landroid/media/CamcorderProfile;I)V
    .registers 3

    return-void
.end method
