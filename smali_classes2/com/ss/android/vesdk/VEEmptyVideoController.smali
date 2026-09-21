.class public Lcom/ss/android/vesdk/VEEmptyVideoController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/ITEVideoController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 1

    return-void
.end method

.method public restart()V
    .registers 1

    return-void
.end method

.method public seek(J)V
    .registers 3

    return-void
.end method

.method public setEnableEffCtrl(Z)V
    .registers 2

    return-void
.end method

.method public setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;)V
    .registers 2

    return-void
.end method

.method public setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method
