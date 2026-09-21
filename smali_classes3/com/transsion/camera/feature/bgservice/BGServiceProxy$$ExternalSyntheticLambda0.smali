.class public final synthetic Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    return-void
.end method


# virtual methods
.method public final onCompleted(IIIJII)Z
    .registers 8

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static/range {p0 .. p7}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->$r8$lambda$VBeU-PhhwAUeyMFizOO2sfya0Rc(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;IIIJII)Z

    move-result p0

    return p0
.end method
