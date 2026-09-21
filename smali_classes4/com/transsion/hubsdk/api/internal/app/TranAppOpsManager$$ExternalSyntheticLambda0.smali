.class public final synthetic Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/internal/app/TranAospAppOpsServiceExt$ITranAppOpsActiveCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;

    return-void
.end method


# virtual methods
.method public final opActiveChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .registers 8

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;

    invoke-static/range {p0 .. p7}, Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager;->$r8$lambda$LNX2wmMuPynoF6PxGEHbY2kygdA(Lcom/transsion/hubsdk/api/internal/app/TranAppOpsManager$ITranAppOpsActiveCallback;IILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method
