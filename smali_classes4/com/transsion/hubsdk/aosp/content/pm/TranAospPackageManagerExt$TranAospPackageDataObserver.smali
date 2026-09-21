.class public Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospPackageDataObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDataObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 3

    .line 45
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDataObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;

    if-eqz p0, :cond_7

    .line 46
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method
