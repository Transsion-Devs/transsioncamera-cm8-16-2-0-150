.class public final synthetic Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda12;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda12;->f$0:Z

    check-cast p1, Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->$r8$lambda$hNLXoO3zDm5wbW7C4uE09gIb0x0(ZLcom/transsion/camera/app/ui/view/ViewSwitcher;)V

    return-void
.end method
