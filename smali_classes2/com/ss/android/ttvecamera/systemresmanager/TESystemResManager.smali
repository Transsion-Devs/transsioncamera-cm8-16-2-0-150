.class public Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;,
        Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;
    }
.end annotation


# instance fields
.field private isInitialized:Z

.field public mStrategy:Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->isInitialized:Z

    return-void
.end method


# virtual methods
.method public initStrategy(Landroid/content/Context;)V
    .registers 3

    .line 33
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->isInitialized:Z

    if-nez v0, :cond_e

    .line 34
    iget-object v0, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->mStrategy:Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;

    if-eqz v0, :cond_b

    .line 35
    invoke-interface {v0, p1}, Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;->init(Landroid/content/Context;)V

    :cond_b
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->isInitialized:Z

    :cond_e
    return-void
.end method

.method public setStrategy(Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;)V
    .registers 3

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->isInitialized:Z

    .line 43
    iput-object p1, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->mStrategy:Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;

    return-void
.end method

.method public startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V
    .registers 4

    .line 47
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->isInitialized:Z

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->mStrategy:Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;

    if-eqz p0, :cond_1b

    .line 48
    iget-object v0, p1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;->type:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    sget-object v1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->BOOST_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    if-ne v0, v1, :cond_14

    .line 49
    iget p1, p1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;->timeout:I

    invoke-interface {p0, p1}, Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;->boostCpuFreq(I)V

    return-void

    .line 50
    :cond_14
    sget-object p1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->RESTORE_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    if-ne v0, p1, :cond_1b

    .line 51
    invoke-interface {p0}, Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;->restoreCpuFreq()V

    :cond_1b
    return-void
.end method
