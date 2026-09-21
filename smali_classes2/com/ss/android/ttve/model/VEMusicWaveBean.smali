.class public Lcom/ss/android/ttve/model/VEMusicWaveBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private waveBean:[F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWaveBean()[F
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEMusicWaveBean;->waveBean:[F

    return-object p0
.end method

.method public setWaveBean([F)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEMusicWaveBean;->waveBean:[F

    return-void
.end method
