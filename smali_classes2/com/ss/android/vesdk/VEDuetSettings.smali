.class public final Lcom/ss/android/vesdk/VEDuetSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;
    }
.end annotation


# instance fields
.field private enableV2:Z

.field private mAlpha:F

.field private mDuetAudioPath:Ljava/lang/String;

.field private mDuetVideoPath:Ljava/lang/String;

.field private mIsFitMode:Z

.field private mPlayMode:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

.field private mXInPercent:F

.field private mYInPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFZ)V
    .registers 8

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->enableV2:Z

    .line 134
    sget-object v0, Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;->ATTACH:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mPlayMode:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    .line 38
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetVideoPath:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetAudioPath:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mXInPercent:F

    .line 41
    iput p4, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mYInPercent:F

    .line 42
    iput p5, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mAlpha:F

    .line 43
    iput-boolean p6, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mIsFitMode:Z

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 1

    .line 117
    iget p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mAlpha:F

    return p0
.end method

.method public getDuetAudioPath()Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetAudioPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDuetVideoPath()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetVideoPath:Ljava/lang/String;

    return-object p0
.end method

.method public getEnableV2()Z
    .registers 1

    .line 151
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->enableV2:Z

    return p0
.end method

.method public getIsFitMode()Z
    .registers 1

    .line 143
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mIsFitMode:Z

    return p0
.end method

.method public getPlayMode()Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mPlayMode:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    return-object p0
.end method

.method public getXInPercent()F
    .registers 1

    .line 87
    iget p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mXInPercent:F

    return p0
.end method

.method public getYInPercent()F
    .registers 1

    .line 101
    iget p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mYInPercent:F

    return p0
.end method

.method public setEnableV2(Z)V
    .registers 2

    .line 147
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->enableV2:Z

    return-void
.end method

.method public setPlayMode(Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mPlayMode:Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v1, "\"mDuetVideoPath\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetVideoPath:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, ",\"mDuetAudioPath\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mDuetAudioPath:Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ",\"mXInPercent\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mXInPercent:F

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ",\"mYInPercent\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mYInPercent:F

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ",\"mAlpha\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mAlpha:F

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ",\"mIsFitMode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEDuetSettings;->mIsFitMode:Z

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ",\"enableV2\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEDuetSettings;->enableV2:Z

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
