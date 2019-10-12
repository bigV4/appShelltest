.class public Lcom/msec/charsetdetect/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field public static final UTF16_POSSIBILITY_BASE:I = 0x1


# instance fields
.field protected charsetName:Ljava/lang/String;

.field protected invalid:Z

.field protected utf16Possibility:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/charsetdetect/Detector;->invalid:Z

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/msec/charsetdetect/Detector;->utf16Possibility:I

    .line 12
    iput-object p1, p0, Lcom/msec/charsetdetect/Detector;->charsetName:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public finish()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/msec/charsetdetect/Detector;->charsetName:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/msec/charsetdetect/Detector;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidBOM(III)Z
    .locals 1
    .param p1, "b0"    # I
    .param p2, "b1"    # I
    .param p3, "b2"    # I

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public update(I)Z
    .locals 1
    .param p1, "ch"    # I

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public utf16Possibility()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/msec/charsetdetect/Detector;->utf16Possibility:I

    return v0
.end method
