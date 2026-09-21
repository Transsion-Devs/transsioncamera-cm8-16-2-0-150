.class public Lcom/ss/android/vesdk/VETitanVideoController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/ITEVideoController;


# instance fields
.field private proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;


# direct methods
.method public constructor <init>(Lcom/ss/android/medialib/presenter/ITEVideoController;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ss/android/vesdk/VETitanVideoController;->proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/ss/android/vesdk/VETitanVideoController;->proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;

    invoke-interface {p0}, Lcom/ss/android/medialib/presenter/ITEVideoController;->pause()V

    return-void
.end method

.method public restart()V
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/ss/android/vesdk/VETitanVideoController;->proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;

    invoke-interface {p0}, Lcom/ss/android/medialib/presenter/ITEVideoController;->restart()V

    return-void
.end method

.method public seek(J)V
    .registers 3

    .line 59
    iget-object p0, p0, Lcom/ss/android/vesdk/VETitanVideoController;->proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/presenter/ITEVideoController;->seek(J)V

    return-void
.end method

.method public setEnableEffCtrl(Z)V
    .registers 2

    .line 25
    iget-object p0, p0, Lcom/ss/android/vesdk/VETitanVideoController;->proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/presenter/ITEVideoController;->setEnableEffCtrl(Z)V

    return-void
.end method

.method public setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;)V
    .registers 2

    .line 80
    iget-object p0, p0, Lcom/ss/android/vesdk/VETitanVideoController;->proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/presenter/ITEVideoController;->setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;)V

    return-void
.end method

.method public setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;)V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/ss/android/vesdk/VETitanVideoController;->proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/presenter/ITEVideoController;->setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/ss/android/vesdk/VETitanVideoController;->proxy:Lcom/ss/android/medialib/presenter/ITEVideoController;

    invoke-interface {p0}, Lcom/ss/android/medialib/presenter/ITEVideoController;->start()V

    return-void
.end method
