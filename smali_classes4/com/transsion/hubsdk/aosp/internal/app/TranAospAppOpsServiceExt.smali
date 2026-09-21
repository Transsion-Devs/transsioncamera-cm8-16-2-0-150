.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;,
        Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$TranAospAppOpsActiveCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospAppOpsServiceExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt;->mContext:Landroid/content/Context;

    return-void
.end method
