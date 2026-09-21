.class Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/crypto/CTRCipherGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SHA256Info"
.end annotation


# instance fields
.field protected sha256ForAESEncrypted:Ljava/lang/String;

.field protected sha256ForPlainText:Ljava/lang/String;

.field final synthetic this$0:Lcom/obs/services/crypto/CTRCipherGenerator;


# direct methods
.method public constructor <init>(Lcom/obs/services/crypto/CTRCipherGenerator;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 209
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->this$0:Lcom/obs/services/crypto/CTRCipherGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->sha256ForPlainText:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->sha256ForAESEncrypted:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSha256ForAESEncrypted()Ljava/lang/String;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->sha256ForAESEncrypted:Ljava/lang/String;

    return-object p0
.end method

.method public getSha256ForPlainText()Ljava/lang/String;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->sha256ForPlainText:Ljava/lang/String;

    return-object p0
.end method

.method public setSha256ForAESEncrypted(Ljava/lang/String;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->sha256ForAESEncrypted:Ljava/lang/String;

    return-void
.end method

.method public setSha256ForPlainText(Ljava/lang/String;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/obs/services/crypto/CTRCipherGenerator$SHA256Info;->sha256ForPlainText:Ljava/lang/String;

    return-void
.end method
