.class public final synthetic Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoTopBarItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->updateSupportEntries()V

    return-void
.end method
