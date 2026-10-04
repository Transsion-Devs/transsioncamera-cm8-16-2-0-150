.class Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;
.super Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigChangeListenerStub"
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;)V
    .registers 3

    .line 547
    iput-object p1, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/lighting/ITranLightingConfigChangeListener$Stub;-><init>()V

    .line 548
    iput-object p2, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    return-void
.end method


# virtual methods
.method public onCustomEffectAdded(I)V
    .registers 2

    .line 579
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    if-nez p0, :cond_5

    return-void

    .line 583
    :cond_5
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;->onCustomEffectAdded(I)V

    return-void
.end method

.method public onLightingConfigChanged(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)V
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    if-eqz v0, :cond_14

    if-nez p1, :cond_7

    goto :goto_14

    .line 558
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    # invokes: Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertLighting(Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
    invoke-static {v0, p1}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->access$100(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/lighting/TranLightingConfig;)Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 560
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;->onLightingConfigChanged(Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public onSceneConfigChanged(ILcom/transsion/hubsdk/lighting/TranSceneConfig;)V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    if-eqz v0, :cond_14

    if-nez p2, :cond_7

    goto :goto_14

    .line 571
    :cond_7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->this$0:Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;

    # invokes: Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->convertScene(Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    invoke-static {v0, p2}, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;->access$200(Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager;Lcom/transsion/hubsdk/lighting/TranSceneConfig;)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 573
    iget-object p0, p0, Lcom/transsion/hubsdk/core/lighting/TranThubLightingManager$ConfigChangeListenerStub;->mListener:Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/lighting/LightingConfigChangeListener;->onSceneConfigChanged(ILcom/transsion/hubsdk/api/lighting/TranSceneConfig;)V

    :cond_14
    :goto_14
    return-void
.end method
