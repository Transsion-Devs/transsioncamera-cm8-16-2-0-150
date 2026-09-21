.class public Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;
.super Lcom/transsion/hubsdk/content/pm/ITranPackageDeleteObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranPackageDeleteObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;)V
    .registers 3

    .line 136
    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;->this$0:Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/content/pm/ITranPackageDeleteObserver$Stub;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 3

    .line 141
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager$TranPackageDeleteObserver;->mObserver:Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;

    if-eqz p0, :cond_7

    .line 142
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method
