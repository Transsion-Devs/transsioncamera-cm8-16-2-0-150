.class public final synthetic Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/bgservice/BGServiceProxy;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->$r8$lambda$LBQM0lMFUmx1Nhc7H4YGkVG3s-M(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;J)V

    return-void
.end method
