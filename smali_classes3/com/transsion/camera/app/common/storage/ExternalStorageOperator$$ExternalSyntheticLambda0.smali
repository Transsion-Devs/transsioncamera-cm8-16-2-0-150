.class public final synthetic Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

.field public final synthetic f$1:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;->f$1:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator$$ExternalSyntheticLambda0;->f$1:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->$r8$lambda$2IuDBMqyOZLrbnUq0usCaA0BLW8(Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method
