.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitionBuilder"
.end annotation


# instance fields
.field private final pendingTransitions:Ljava/util/Map;

.field final synthetic this$1:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->this$1:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->pendingTransitions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public add(Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TransitionAction;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;
    .registers 5

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_TO_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->pendingTransitions:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public register()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->this$1:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->pendingTransitions:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler;->registerTransitions(Ljava/util/Map;)V

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$StateTransitionHandler$TransitionBuilder;->pendingTransitions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
