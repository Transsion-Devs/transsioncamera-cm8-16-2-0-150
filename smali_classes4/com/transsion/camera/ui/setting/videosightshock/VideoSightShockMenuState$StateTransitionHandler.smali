.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateTransitionHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

.field private final transitionActions:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->transitionActions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public builder()Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;
    .registers 2

    .line 90
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;)V

    return-object v0
.end method

.method public handleTransition(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;)V
    .registers 5

    if-ne p1, p2, :cond_3

    return-void

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_TO_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->transitionActions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;

    if-eqz v0, :cond_33

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->-$$Nest$fgetmNeedAnimation(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;->execute(Z)V

    return-void

    .line 66
    :cond_33
    invoke-static {}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t find transition action\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public registerTransitions(Ljava/util/Map;)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->transitionActions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
