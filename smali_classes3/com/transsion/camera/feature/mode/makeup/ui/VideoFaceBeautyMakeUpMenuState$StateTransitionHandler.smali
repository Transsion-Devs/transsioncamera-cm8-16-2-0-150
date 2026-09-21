.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateTransitionHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

.field private final transitionActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;->transitionActions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public builder()Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;
    .registers 2

    .line 107
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler$TransitionBuilder;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;)V

    return-object v0
.end method

.method public handleTransition(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;)V
    .registers 5

    if-ne p1, p2, :cond_3

    return-void

    .line 76
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

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;->transitionActions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;

    if-eqz v0, :cond_38

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->-$$Nest$fgetmNeedAnimation(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;->execute(Z)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->-$$Nest$mdoAfterHandleTransition(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;)V

    return-void

    .line 83
    :cond_38
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TransitionAction;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$StateTransitionHandler;->transitionActions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
