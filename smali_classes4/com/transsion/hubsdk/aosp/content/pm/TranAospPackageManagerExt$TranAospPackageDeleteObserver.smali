.class public Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospPackageDeleteObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDeleteObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 3

    .line 31
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDeleteObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

    if-eqz p0, :cond_7

    .line 32
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method
