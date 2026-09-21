.class public final synthetic Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->$r8$lambda$e5LXV6QF0IKr6HyO23pOBrco9_8(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDataObserver;Ljava/lang/String;Z)V

    return-void
.end method
