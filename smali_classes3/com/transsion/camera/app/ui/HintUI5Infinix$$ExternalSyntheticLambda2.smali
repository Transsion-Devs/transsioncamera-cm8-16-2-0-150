.class public final synthetic Lcom/transsion/camera/app/ui/HintUI5Infinix$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/HintUI5Infinix;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/HintUI5Infinix;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUI5Infinix$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/ui/HintUI5Infinix;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUI5Infinix$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/ui/HintUI5Infinix;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->applyAnalytics(ILjava/lang/String;)V

    return-void
.end method
