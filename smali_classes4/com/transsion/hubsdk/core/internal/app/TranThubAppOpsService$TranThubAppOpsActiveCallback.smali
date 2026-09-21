.class public Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$TranThubAppOpsActiveCallback;
.super Lcom/transsion/hubsdk/internal/app/ITranAppOpsActiveCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranThubAppOpsActiveCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;)V
    .registers 2

    .line 129
    invoke-direct {p0}, Lcom/transsion/hubsdk/internal/app/ITranAppOpsActiveCallback$Stub;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$TranThubAppOpsActiveCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;

    return-void
.end method


# virtual methods
.method public opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 8

    .line 135
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAppOpsService$TranThubAppOpsActiveCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;

    if-eqz p0, :cond_7

    .line 136
    invoke-interface/range {p0 .. p7}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;->opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_7
    return-void
.end method
