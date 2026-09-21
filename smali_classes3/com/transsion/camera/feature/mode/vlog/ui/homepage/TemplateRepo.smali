.class public final Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadItems(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;)V
    .registers 3

    .line 17
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$1;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateRepo$ILoadCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 30
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
