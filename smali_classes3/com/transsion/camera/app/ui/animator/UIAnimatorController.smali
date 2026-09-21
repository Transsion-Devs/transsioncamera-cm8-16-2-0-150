.class public Lcom/transsion/camera/app/ui/animator/UIAnimatorController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IUIAnimatorController;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAnimatorTypes:Ljava/util/EnumSet;

.field private final mOnIdleCallbacks:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$OpBiKN9t_8kVCXX_4DFg0-FRcXs(Lcom/transsion/camera/app/ui/animator/UIAnimatorController;Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->lambda$registerOnIdle$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UIAnimatorController"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mAnimatorTypes:Ljava/util/EnumSet;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mOnIdleCallbacks:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$registerOnIdle$0(Ljava/lang/Runnable;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mOnIdleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 62
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->unregisterOnIdle(Ljava/lang/Runnable;)V

    .line 63
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 4

    .line 81
    sget-object v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRunning: mAnimatorTypes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mAnimatorTypes:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mAnimatorTypes:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public registerOnIdle(Ljava/lang/Runnable;JLandroid/os/Handler;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_23

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mOnIdleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_24

    .line 54
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    goto :goto_24

    :cond_15
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_23

    .line 60
    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/animator/UIAnimatorController$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/animator/UIAnimatorController;Ljava/lang/Runnable;)V

    invoke-virtual {p4, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_23
    :goto_23
    return-void

    .line 55
    :cond_24
    :goto_24
    sget-object p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerOnIdle: must run in main thread"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterOnIdle(Ljava/lang/Runnable;)V
    .registers 2

    if-nez p1, :cond_8

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mOnIdleCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    .line 76
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mOnIdleCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateAnimatorState(Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;Z)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_47

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mAnimatorTypes:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz p2, :cond_11

    .line 28
    iget-object p2, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mAnimatorTypes:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 30
    :cond_11
    iget-object p2, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mAnimatorTypes:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 32
    :goto_16
    iget-object p1, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mAnimatorTypes:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez v0, :cond_47

    if-eqz p1, :cond_47

    .line 33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mOnIdleCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_47

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mOnIdleCallbacks:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/animator/UIAnimatorController;->mOnIdleCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_39
    if-ge p2, p0, :cond_47

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    check-cast v0, Ljava/lang/Runnable;

    .line 37
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_39

    :cond_47
    :goto_47
    return-void
.end method
