.class final Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EngineHandler"
.end annotation


# instance fields
.field private final mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    new-instance p1, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;

    invoke-direct {p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)V
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->config(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)Z

    return-void
.end method

.method private handleInit()V
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->init()Z

    return-void
.end method

.method private handleProcess(ILandroid/util/Pair;[Landroid/graphics/Rect;)V
    .registers 4

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->process(ILandroid/util/Pair;[Landroid/graphics/Rect;)V

    return-void
.end method

.method private handleReset()V
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->reset()Z

    return-void
.end method

.method private handleSetCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .registers 2

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->setCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    return-void
.end method

.method private handleUnInit()V
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->mWideSelfie:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;

    invoke-interface {p0}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie;->unInit()Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7e

    .line 140
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 137
    :pswitch_23
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleUnInit()V

    return-void

    .line 134
    :pswitch_27
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleReset()V

    return-void

    .line 124
    :pswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    instance-of v1, v0, Landroid/util/Pair;

    if-nez v1, :cond_3b

    .line 126
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid data"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_3b
    check-cast v0, Landroid/util/Pair;

    .line 131
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleProcess(ILandroid/util/Pair;[Landroid/graphics/Rect;)V

    return-void

    .line 115
    :pswitch_4b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5d

    .line 116
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    if-nez v0, :cond_5d

    .line 118
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid WideSelfieCallback"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_5d
    check-cast p1, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleSetCallback(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    return-void

    .line 107
    :pswitch_63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    if-nez v0, :cond_73

    .line 109
    invoke-static {}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "invalid ConfigParameters"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_73
    check-cast p1, Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleConfig(Lcom/transsion/camera/featurelibs/wideselfie/ConfigParam;)V

    return-void

    .line 104
    :pswitch_79
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieEngine$EngineHandler;->handleInit()V

    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_79
        :pswitch_63
        :pswitch_4b
        :pswitch_2b
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method
