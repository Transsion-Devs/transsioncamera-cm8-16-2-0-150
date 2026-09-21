.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$TranAospAppOpsActiveCallback;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospAppOpsActiveCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$TranAospAppOpsActiveCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;

    return-void
.end method


# virtual methods
.method public opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    .registers 9

    .line 34
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$TranAospAppOpsActiveCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;

    if-eqz p0, :cond_a

    move p5, p6

    move p6, p7

    move p7, p8

    .line 35
    invoke-interface/range {p0 .. p7}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_a
    return-void
.end method
