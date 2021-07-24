import requests
from bs4 import BeautifulSoup
import os

# coding=utf8

url_quanau ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/quan/quan-au/'
url_quanjeans ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/quan/quan-jeans/'
url_quanjogger ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/quan/quan-jogger/'
url_quankaki ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/quan/quan-kaki/'
url_quanshort ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/quan/quan-short/'
folder = 'quannam'
# try:
#     os.mkdir(os.path.join(os.getcwd(),folder))
# except:
#     pass
# os.chdir(os.path.join(os.getcwd(),folder))

def imagedown(url,folder):
    r = requests.get(url)
    soup=BeautifulSoup(r.text,'html.parser')

    # print(soup.title.text)

    lista = soup.find_all('a')
    # print(image)
    for a in lista:
        if a.has_attr('class'):
            if a['class'] == ['image-resize']:
                t1 = a['title']
                # print(t1)
                # try:
                #     os.mkdir(os.path.join(
                #         "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\quannam\\"+folder,
                #         t1))
                # except:
                #     pass
                # os.chdir(os.path.join(
                #     "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\quannam\\"+folder,
                #     t1))
                r1 = requests.get(a['href'])
                soup1 = BeautifulSoup(r1.text, 'html.parser')
                images = soup1.find_all('img')
                for img in images:
                    if img.has_attr('alt'):
                        if img['alt'] == " " + a['title'] + " ":
                            namefolder = img['src'].split('/')
                            # link_urlCT = img['src']
                            print(namefolder[len(namefolder) - 1])
                            # print(namefolder[len(namefolder) - 1])
                            # with open(namefolder[len(namefolder) - 1], 'wb') as f:
                            #     im = requests.get(link_urlCT)
                            #     f.write(im.content)
                            #     print('Writing: ', namefolder[len(namefolder) - 1])
def load_fol(url_1,folder_1,length):
    for i in range(1,length):
        # try:
        #     os.mkdir(os.path.join(
        #         "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\quannam",
        #         folder_1))
        # except:
        #     pass
        # os.chdir(os.path.join(
        #     "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\quannam",
        #     folder_1))
        imagedown(url_1+'page/'+str(i),folder_1)

load_fol(url_quanau,"LSPQAU20210509",2)
load_fol(url_quanjeans,"LSPQJEANS20210509",3)
load_fol(url_quanjogger,"LSPQJOGGER20210509",2)
load_fol(url_quankaki,"LSPQKAKI20210509",2)
load_fol(url_quanshort,"LSPQSHORT20210509",3)

