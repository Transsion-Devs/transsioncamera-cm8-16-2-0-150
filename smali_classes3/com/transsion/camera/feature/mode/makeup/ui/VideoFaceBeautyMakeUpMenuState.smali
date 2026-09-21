.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

.field private mDoAfterHandleTransition:Ljava/lang/Runnable;

.field private mNeedAnimation:Z

.field private final stateTransitionHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNeedAnimation(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mNeedAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoAfterHandleTransition(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->doAfterHandleTransition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyMakeUpMenuState"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mNeedAnimation:Z

    .line 17
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    .line 18
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->stateTransitionHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;

    return-void
.end method

.method private doAfterHandleTransition()V
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mDoAfterHandleTransition:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    .line 113
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    return-object p0
.end method

.method public getStateTransitionHandler()Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->stateTransitionHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;

    return-object p0
.end method

.method public isSameState(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 144
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    return v0
.end method

.method public needShowCollapsedTab()Z
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public needShowScrollerBackground()Z
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public needShowScrollerBar()Z
    .registers 2

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public needShowTabBar()Z
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public setDoAfterHandleTransition(Ljava/lang/Runnable;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mDoAfterHandleTransition:Ljava/lang/Runnable;

    return-void
.end method

.method public update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V
    .registers 6

    .line 32
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    .line 34
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mNeedAnimation:Z

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->mCurrentState:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->stateTransitionHandler:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;->handleTransition(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;)V

    return-void
.end method

.method public update(Ljava/lang/String;Z)V
    .registers 5

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 23
    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    return-void

    .line 24
    :cond_10
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 25
    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    return-void

    .line 26
    :cond_20
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 27
    invoke-virtual {p0, v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->update(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Z)V

    :cond_2f
    return-void
.end method
