.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;,
        Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;,
        Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

.field private mNeedAnimation:Z

.field private final stateTransitionHandler:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNeedAnimation(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mNeedAnimation:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoSightShockMenuState"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mNeedAnimation:Z

    .line 15
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    .line 16
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->stateTransitionHandler:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;

    return-void
.end method


# virtual methods
.method public getStateTransitionHandler()Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->stateTransitionHandler:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;

    return-object p0
.end method

.method public isSameState(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 117
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    return v0
.end method

.method public needShowCollapsedTab()Z
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public needShowScrollerBackground()Z
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public needShowScrollerBar()Z
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

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

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

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

.method public update(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Z)V
    .registers 6

    .line 20
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 21
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mNeedAnimation:Z

    .line 22
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->mCurrentState:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->stateTransitionHandler:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->handleTransition(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)V

    return-void
.end method
