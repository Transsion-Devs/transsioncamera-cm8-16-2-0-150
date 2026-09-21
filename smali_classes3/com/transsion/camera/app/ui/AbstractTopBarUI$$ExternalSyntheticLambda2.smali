.class public final synthetic Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/ui/AbstractTopBarUI;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->$r8$lambda$48ce_gNv14-xUJ05tm6JP1Dztgs(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method
