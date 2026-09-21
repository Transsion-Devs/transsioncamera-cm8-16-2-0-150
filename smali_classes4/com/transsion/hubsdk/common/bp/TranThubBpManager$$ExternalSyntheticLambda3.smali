.class public final synthetic Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/hubsdk/common/bp/TranThubBpManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/bp/TranThubBpManager;->$r8$lambda$T58pLpqQK98sSgasHxdJX9E51Kc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
