.class public final synthetic Lcom/transsion/camera/app/common/storage/InternalStorageOperator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/InternalStorageOperator$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->$r8$lambda$BY2PqjBwZFUSatw69dWOTx78sJg(Ljava/io/File;)V

    return-void
.end method
