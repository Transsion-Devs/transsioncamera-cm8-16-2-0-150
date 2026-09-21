.class public Lcom/transsion/hubsdk/core/content/pm/TranThubPackageInstaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageInstallerAdapter;


# instance fields
.field private mInstaller:Lcom/transsion/hubsdk/content/pm/TranPackageInstaller;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/transsion/hubsdk/content/pm/TranPackageInstaller;

    invoke-direct {v0}, Lcom/transsion/hubsdk/content/pm/TranPackageInstaller;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageInstaller;->mInstaller:Lcom/transsion/hubsdk/content/pm/TranPackageInstaller;

    return-void
.end method


# virtual methods
.method public setDontKillApp(Landroid/content/pm/PackageInstaller$SessionParams;Z)V
    .registers 3

    .line 23
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageInstaller;->mInstaller:Lcom/transsion/hubsdk/content/pm/TranPackageInstaller;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/content/pm/TranPackageInstaller;->setDontKillApp(Landroid/content/pm/PackageInstaller$SessionParams;Z)V

    return-void
.end method
