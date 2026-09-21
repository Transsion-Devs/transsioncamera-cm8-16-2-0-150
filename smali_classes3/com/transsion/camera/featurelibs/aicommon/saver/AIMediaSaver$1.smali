.class Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;
.super Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->saveJpeg(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Landroid/location/Location;[BLcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentValues:Landroid/content/ContentValues;

.field final synthetic val$jpeg:[B

.field final synthetic val$listener:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;

.field final synthetic val$storageDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;Landroid/content/ContentValues;Ljava/lang/String;[B)V
    .registers 6

    .line 158
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$listener:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$contentValues:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$storageDir:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$jpeg:[B

    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;I)V
    .registers 6

    .line 161
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveJpeg onFileSaved uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", listener: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$listener:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$listener:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;

    if-eqz p2, :cond_53

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$contentValues:Landroid/content/ContentValues;

    const-string v0, "_display_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$listener:Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$storageDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$1;->val$jpeg:[B

    invoke-interface {v0, p1, p2, p0}, Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;->onSaved(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_53
    return-void
.end method
