.class public Lorg/apache/commons/io/output/AppendableOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Appendable;",
        ">",
        "Ljava/io/OutputStream;"
    }
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/io/output/AppendableOutputStream;->appendable:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public getAppendable()Ljava/lang/Appendable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lorg/apache/commons/io/output/AppendableOutputStream;->appendable:Ljava/lang/Appendable;

    return-object p0
.end method

.method public write(I)V
    .registers 2

    .line 56
    iget-object p0, p0, Lorg/apache/commons/io/output/AppendableOutputStream;->appendable:Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method
