.class public final synthetic Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->$r8$lambda$jJeNbQ-MPIT27iBhrsdgY5cBNJc(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    return-void
.end method
