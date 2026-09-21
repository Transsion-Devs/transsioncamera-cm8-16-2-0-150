.class public Lcom/ss/android/vesdk/VELensCallBacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private volatile mLensStateListener:Lcom/ss/android/vesdk/VEListener$VELensStateListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ss/android/vesdk/VELensCallBacks;->mLensStateListener:Lcom/ss/android/vesdk/VEListener$VELensStateListener;

    return-void
.end method

.method public static onAlgorithmProcess(Ljava/lang/Object;I)Z
    .registers 4

    .line 16
    instance-of v0, p0, Lcom/ss/android/vesdk/VELensCallBacks;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 17
    check-cast p0, Lcom/ss/android/vesdk/VELensCallBacks;

    .line 18
    iget-object v0, p0, Lcom/ss/android/vesdk/VELensCallBacks;->mLensStateListener:Lcom/ss/android/vesdk/VEListener$VELensStateListener;

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/ss/android/vesdk/VELensCallBacks;->mLensStateListener:Lcom/ss/android/vesdk/VEListener$VELensStateListener;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VELensStateListener;->getState(I)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method


# virtual methods
.method public setmLensStateListener(Ljava/lang/Object;)V
    .registers 2

    .line 28
    check-cast p1, Lcom/ss/android/vesdk/VEListener$VELensStateListener;

    iput-object p1, p0, Lcom/ss/android/vesdk/VELensCallBacks;->mLensStateListener:Lcom/ss/android/vesdk/VEListener$VELensStateListener;

    return-void
.end method
