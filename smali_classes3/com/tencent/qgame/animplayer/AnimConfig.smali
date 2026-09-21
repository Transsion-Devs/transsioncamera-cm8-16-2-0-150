.class public final Lcom/tencent/qgame/animplayer/AnimConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/AnimConfig$z1OoOdo;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/AnimConfig$z1OoOdo;


# instance fields
.field private alphaPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

.field private defaultVideoMode:I

.field private fps:I

.field private height:I

.field private isDefaultConfig:Z

.field private isMix:Z

.field private jsonConfig:Lorg/json/JSONObject;

.field private orien:I

.field private rgbPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

.field private totalFrames:I

.field private final version:I

.field private videoHeight:I

.field private videoWidth:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimConfig$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/AnimConfig$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/AnimConfig;->Companion:Lcom/tencent/qgame/animplayer/AnimConfig$z1OoOdo;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->version:I

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOelse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->alphaPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->rgbPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->defaultVideoMode:I

    return-void
.end method


# virtual methods
.method public final getAlphaPointRect()Lcom/tencent/qgame/animplayer/z1OoOelse;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->alphaPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    return-object p0
.end method

.method public final getDefaultVideoMode()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->defaultVideoMode:I

    return p0
.end method

.method public final getFps()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->fps:I

    return p0
.end method

.method public final getHeight()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->height:I

    return p0
.end method

.method public final getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRgbPointRect()Lcom/tencent/qgame/animplayer/z1OoOelse;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->rgbPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    return-object p0
.end method

.method public final getVideoHeight()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->videoHeight:I

    return p0
.end method

.method public final getVideoWidth()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->videoWidth:I

    return p0
.end method

.method public final getWidth()I
    .registers 1

    iget p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->width:I

    return p0
.end method

.method public final isDefaultConfig()Z
    .registers 1

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig:Z

    return p0
.end method

.method public final isMix()Z
    .registers 1

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->isMix:Z

    return p0
.end method

.method public final parse(Lorg/json/JSONObject;)Z
    .registers 12

    const-string v0, "AnimPlayer.AnimConfig"

    const-string v1, "json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    const-string v2, "info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v2, "v"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->version:I

    if-eq v3, v2, :cond_3a

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current version="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->version:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " target="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_37
    move-exception p0

    goto/16 :goto_c6

    :cond_3a
    const-string v2, "f"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->totalFrames:I

    const-string/jumbo v2, "w"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->width:I

    const-string v2, "h"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->height:I

    const-string/jumbo v2, "videoW"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->videoWidth:I

    const-string/jumbo v2, "videoH"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->videoHeight:I

    const-string v2, "orien"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->orien:I

    const-string v2, "fps"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->fps:I

    const-string v2, "isVapx"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_80

    move v2, v3

    goto :goto_81

    :cond_80
    move v2, v1

    :goto_81
    iput-boolean v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->isMix:Z

    const-string v2, "aFrame"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_8c

    return v1

    :cond_8c
    new-instance v4, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-direct {v4, v5, v6, v8, v2}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    iput-object v4, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->alphaPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    const-string v2, "rgbFrame"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_ae

    return v1

    :cond_ae
    new-instance v2, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    iput-object v2, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->rgbPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_c5} :catch_37

    return v3

    :goto_c6
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "json parse fail "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, p0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final setAlphaPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->alphaPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    return-void
.end method

.method public final setDefaultConfig(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig:Z

    return-void
.end method

.method public final setDefaultVideoMode(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->defaultVideoMode:I

    return-void
.end method

.method public final setFps(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->fps:I

    return-void
.end method

.method public final setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->height:I

    return-void
.end method

.method public final setJsonConfig(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->jsonConfig:Lorg/json/JSONObject;

    return-void
.end method

.method public final setRgbPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->rgbPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    return-void
.end method

.method public final setVideoHeight(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->videoHeight:I

    return-void
.end method

.method public final setVideoWidth(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->videoWidth:I

    return-void
.end method

.method public final setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->width:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimConfig(version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->totalFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orien="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->orien:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->isMix:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alphaPointRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->alphaPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rgbPointRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->rgbPointRect:Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
