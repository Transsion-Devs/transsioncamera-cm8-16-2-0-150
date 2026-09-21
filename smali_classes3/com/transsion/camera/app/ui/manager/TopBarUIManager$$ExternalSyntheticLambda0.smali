.class public final synthetic Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->$r8$lambda$qTm4-VrsY9WTsx9Z_STOIKq1a_s(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result p0

    return p0
.end method
