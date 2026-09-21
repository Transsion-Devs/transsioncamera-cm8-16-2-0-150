.class public Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/model/VEPrePlayStopParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private params:Lcom/ss/android/vesdk/model/VEPrePlayStopParams;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;-><init>(Lcom/ss/android/vesdk/model/VEPrePlayStopParams$1;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;->params:Lcom/ss/android/vesdk/model/VEPrePlayStopParams;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/model/VEPrePlayStopParams;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;->params:Lcom/ss/android/vesdk/model/VEPrePlayStopParams;

    return-object p0
.end method

.method public setRebuildTimeline(Z)Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;->params:Lcom/ss/android/vesdk/model/VEPrePlayStopParams;

    # setter for: Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->rebuildTimeline:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->access$202(Lcom/ss/android/vesdk/model/VEPrePlayStopParams;Z)Z

    return-object p0
.end method

.method public setSync(Z)Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/ss/android/vesdk/model/VEPrePlayStopParams$Builder;->params:Lcom/ss/android/vesdk/model/VEPrePlayStopParams;

    # setter for: Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->sync:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/model/VEPrePlayStopParams;->access$102(Lcom/ss/android/vesdk/model/VEPrePlayStopParams;Z)Z

    return-object p0
.end method
