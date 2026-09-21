.class public Lcom/ss/android/medialib/presenter/VEVideoController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/ITEVideoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/presenter/VEVideoController$OnDuetProcessListener;,
        Lcom/ss/android/medialib/presenter/VEVideoController$VEOnVideoEOFListener;
    }
.end annotation


# static fields
.field private static final ACTION_PAUSE:I = 0x2

.field private static final ACTION_RESTART:I = 0x1

.field private static final ACTION_SEEK:I = 0x3

.field private static final ACTION_START:I


# instance fields
.field private invoker:Lcom/ss/android/medialib/RecordInvoker;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/RecordInvoker;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/VEVideoController;->invoker:Lcom/ss/android/medialib/RecordInvoker;

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 4

    .line 54
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEVideoController;->invoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_a

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/medialib/RecordInvoker;->postDuetAction(IJ)I

    :cond_a
    return-void
.end method

.method public restart()V
    .registers 4

    .line 43
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEVideoController;->invoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/medialib/RecordInvoker;->postDuetAction(IJ)I

    :cond_a
    return-void
.end method

.method public seek(J)V
    .registers 4

    .line 65
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEVideoController;->invoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_8

    const/4 v0, 0x3

    .line 66
    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->postDuetAction(IJ)I

    :cond_8
    return-void
.end method

.method public setEnableEffCtrl(Z)V
    .registers 2

    .line 23
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEVideoController;->invoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_7

    .line 24
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setEnableEffCtrl(Z)I

    :cond_7
    return-void
.end method

.method public setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;)V
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEVideoController;->invoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_9

    .line 98
    check-cast p1, Lcom/ss/android/medialib/presenter/VEVideoController$OnDuetProcessListener;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/VEVideoController$OnDuetProcessListener;)V

    :cond_9
    return-void
.end method

.method public setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/VEVideoController$OnDuetProcessListener;)V
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/VEVideoController;->setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;)V

    return-void
.end method

.method public setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEVideoController;->invoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_9

    .line 82
    check-cast p1, Lcom/ss/android/medialib/presenter/VEVideoController$VEOnVideoEOFListener;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/VEVideoController$VEOnVideoEOFListener;)V

    :cond_9
    return-void
.end method

.method public setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/VEVideoController$VEOnVideoEOFListener;)V
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/VEVideoController;->setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;)V

    return-void
.end method

.method public start()V
    .registers 4

    .line 33
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/VEVideoController;->invoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 34
    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/medialib/RecordInvoker;->postDuetAction(IJ)I

    :cond_a
    return-void
.end method
